cask 'node6' do
  version '6.1.0'
  sha256 'b58bfcbce73dc04342a465dca92d802bf5e437f7da224b6157d6c87fe805c5f6'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
