const fs = require('fs');
const path = require('path');
const https = require('https');

// node 版本hash文件
const versions = {
  node4: {
    file: 'node4.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt',
  },
  node6: {
    file: 'node6.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt',
  },
  node7: {
    file: 'node7.rb',
    url: 'https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt',
  },
};


const RE_ONLINE = /\b(\w{64})\s+node-v([\d.]+)\.pkg/m;
const RE_LOCAL = /version\s+['"]([\d.]+)['"][\s\r\n]+sha256\s+['"](\w{64})['"]/;

// 遍历更新版本
Object.keys(versions).forEach(ver => {
  getUrl(versions[ver].url).then((data) => { // 抓取线上版本
    const m = data.match(RE_ONLINE);

    if (m === null) {
      return null;
    }

    // 线上版本
    return {
      version: m[2],
      SHASUMS256: m[1],
    };
  }).then((online) => { // 抓取本地版本
    const content = getFile(versions[ver].file);
    const m = content.match(RE_LOCAL);

    if (m === null) {
      return null;
    }

    // 本地版本
    return {
      online,
      local: {
        version: m[1],
        SHASUMS256: m[2],
        content: content,
      }
    };
  }).then((data) => { // 更新版本
    // console.log(JSON.stringify(data, null, '  '));
    if (data.online.version === data.local.version) { // 版本一致则忽略
      return false;
    }

    const content = data.local.content
      .replace(/version\s+['"]([\d.]+)['"]/, `version '${data.online.version}'`)
      .replace(/sha256\s+['"](\w{64})['"]/, `sha256 '${data.online.SHASUMS256}'`);

    return putFile(versions[ver].file, content);
  }).then(() => console.log(ver, 'done!')).catch(err => console.error(err));
});



/**
 * 抓取页面
 *
 * @param {String} url
 * @returns {Promise}
 */
function getUrl(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      const statusCode = res.statusCode;

      if (statusCode !== 200) {
        reject(new Error(`Request Failed.\nStatus Code: ${statusCode}`));
        return res.resume();
      }

      let rawData = '';
      res.setEncoding('utf8');
      res.on('data', chunk => rawData += chunk);
      res.on('end', () => resolve(rawData));
    }).on('error', reject);
  });
}


/**
 * 加载文件
 *
 * @param {String} file
 * @returns {Promise}
 */
function getFile(file) {
  return fs.readFileSync(path.join(__dirname, '..', 'Casks', file), 'utf8');
}

/**
 * 写入文件
 *
 * @param {String} file
 * @param {String} data
 * @returns {Promise}
 */
function putFile(file, data) {
  return fs.writeFileSync(path.join(__dirname, '..', 'Casks', file), data, 'utf8');
}
