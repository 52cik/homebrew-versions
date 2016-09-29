cask 'node6' do
  version '6.7.0'
  sha256 'c5d46d0f105ed652c9a353d8411558c9c4610db874f01ef07e57ad613e5d4237'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
