cask 'node6' do
  version '6.2.0'
  sha256 '4ce1462c3cf3c327891154ab076f2f5ef16e61b150001d90d8dcaf2ae4e49772'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
