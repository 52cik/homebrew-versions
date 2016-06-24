cask 'node4' do
  version '4.4.6'
  sha256 '0ff8facfc59cbe4bbbce559962d783293cbc540fe78230ab6dd8982dd9011bde'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
