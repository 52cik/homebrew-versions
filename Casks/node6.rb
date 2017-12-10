cask 'node6' do
  version '6.12.2'
  sha256 '3636ac9ea2eb5a28201b700f16fac1840bc0f1d5df17c982df01f2c355695d51'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
