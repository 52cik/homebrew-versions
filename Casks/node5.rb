cask 'node5' do
  version '5.10.1'
  sha256 '581fda48da967e8f5d3ba5ea5e1f6e12e689b91ee26393f398ab261dfe1fcfd2'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
