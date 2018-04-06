cask 'node9' do
  version '9.11.1'
  sha256 'bcd1ae5972802bb7750bc91fea32767ea2f68001a4de12010740dcc8cd9db0e7'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
