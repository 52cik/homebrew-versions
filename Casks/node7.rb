cask 'node7' do
  version '7.3.0'
  sha256 '8c8485544dd10e99a0b5069fbe6b7a1fb8dfd555cd51ab7ba78a412ce3011498'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
