cask 'node7' do
  version '7.1.0'
  sha256 '1d73a93e60b0021f616cdf44062717f67ed6fcfaf15f1efd0fa76491cb7623d0'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
