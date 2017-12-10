cask 'node9' do
  version '9.2.1'
  sha256 '74954f93b2b308e884abf98b644da2cc2eeb3c62698bc3ea9fbea8d9af5e22a7'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
