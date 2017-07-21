cask 'node8' do
  version '8.2.1'
  sha256 '98971a1d66b2af304a36c8760e2dbea59c8fd173319f2dcbb76b929287232982'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
