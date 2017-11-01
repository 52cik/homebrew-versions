cask 'node9' do
  version '9.0.0'
  sha256 '375fc6a834373e26d24ead2cc60e5a9e4b3db184fe7deac6bc9b39ca4db635a7'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
