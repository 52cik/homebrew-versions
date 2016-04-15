cask 'node5' do
  version '5.10.1'
  sha256 '9bf1a7a92debe7613e6ff0d1852aa09e8ed95cf01f276e71848d44235059423a'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
