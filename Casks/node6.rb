cask 'node6' do
  version '6.8.1'
  sha256 'aa08c2fe5c97040f08935bc3e748a998d1a79205a943fecaf5abbc22726a4756'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
