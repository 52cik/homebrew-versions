cask 'node6' do
  version '6.6.0'
  sha256 '7a9af7bf1eb98f8c206037a0dbbcd797c5684e2570d6acc8d915351bad4a5571'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
