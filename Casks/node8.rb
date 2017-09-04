cask 'node8' do
  version '8.4.0'
  sha256 'd9565d5fa3388e2c62404a0d661a5071ba004c7a2e606dae72680b6c8d9a2c02'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
