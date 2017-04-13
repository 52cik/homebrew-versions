cask 'node7' do
  version '7.9.0'
  sha256 'cfd3edb13a3ff4020e75cc942da67aefdbae11944ecfc306cc255b7dfbf05373'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
