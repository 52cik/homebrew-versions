cask 'node6' do
  version '6.9.1'
  sha256 'cdf399288aee1cfc2fcfd301b221d7e3141f3d549ab884f36d325605f6ac98fa'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
