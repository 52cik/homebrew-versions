cask 'node9' do
  version '9.8.0'
  sha256 '03a7fc03315d82166e6bbf8a8979f971189a69a75dfb873af8cc74a127f7867b'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
