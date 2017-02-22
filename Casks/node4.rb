cask 'node4' do
  version '4.8.0'
  sha256 'e3ce14f5b249c888a3fdaae0360239f121f99dcd4d098df76f2a535e438e6cfd'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
