cask 'node6' do
  version '6.11.1'
  sha256 'b74310f4de51f60de8377686d8c150c737a3f41bb2bda353f4b170f9db58aa5f'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
