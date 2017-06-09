cask 'node6' do
  version '6.11.0'
  sha256 'e37386e4bcb20676e706ad21cd3aa86856f095bcd2c3d5acbad8d0dab56685fb'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
