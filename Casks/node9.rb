cask 'node9' do
  version '9.2.0'
  sha256 '47759e657d53cf96b5daf702853c33d771caa99c726348f6092a4297116f4f8b'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
