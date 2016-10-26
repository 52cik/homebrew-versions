cask 'node6' do
  version '7.0.0'
  sha256 '5d935d0e2e864920720623e629e2d4fb0d65238c110db5fbe71f73de8568c024'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
