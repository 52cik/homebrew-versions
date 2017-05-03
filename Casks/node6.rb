cask 'node6' do
  version '6.10.3'
  sha256 '0a2c7a536f9009b9f18b10640b10ea6e5db1573104e9b7f5a80779e708c218b8'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
