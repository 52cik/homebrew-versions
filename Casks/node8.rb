cask 'node8' do
  version '8.8.0'
  sha256 '9968e00b7530203d26baa6aa2895717df5a5c433dc9a8bad032c8d2cfb6a425a'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
