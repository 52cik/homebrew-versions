cask 'node8' do
  version '8.3.0'
  sha256 '3874de85c34f7bbdb9869e4724c08b6904ae0ff9d7560f1a1829527c711dbed0'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
