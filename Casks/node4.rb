cask 'node4' do
  version '4.5.0'
  sha256 '370b65e6cd27943afc18e517f86c7fc801c0d256cb40ca75b2ff01051223cbb6'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
