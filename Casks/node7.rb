cask 'node7' do
  version '7.10.0'
  sha256 'f9deccfbbcd76d6e8b5f7fb1b5920a6770e174ddce01fa4d1a630eb93ca1e486'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
