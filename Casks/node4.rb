cask 'node4' do
  version '4.6.1'
  sha256 'ccf029983486ba15394bd7cf4dd23b19cd371ec58f58d60897e72d156556e8c2'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
