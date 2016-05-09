cask 'node5' do
  version '5.11.1'
  sha256 'f06c2d54057c55913749991a6636e78c4180b989a6ee67bdc0017252bfc6c9c9'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
