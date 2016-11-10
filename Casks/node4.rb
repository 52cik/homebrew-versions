cask 'node4' do
  version '4.6.2'
  sha256 'a25a61f920ca6406e525d955b89ac6347a2d9dc1d80ae6cc0f6ceb50fb8d5e30'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
