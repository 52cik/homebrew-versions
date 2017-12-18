cask 'node9' do
  version '9.3.0'
  sha256 '109a663779e3aacc770b06dfc65b390103adb45a0b763de5ddd1d77d2b2c555c'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
