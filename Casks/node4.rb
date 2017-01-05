cask 'node4' do
  version '4.7.1'
  sha256 '532526080700598f67f2fa532cf6e893d90ff573aa798ad25f43be3d7b2c9a5f'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
