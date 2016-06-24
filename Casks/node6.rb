cask 'node6' do
  version '6.2.2'
  sha256 '122c74d5864f99530638f35652129c8b2ba3163317a7c404e1a058f97ceba7d4'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
