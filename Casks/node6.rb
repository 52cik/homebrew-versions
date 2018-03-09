cask 'node6' do
  version '6.13.1'
  sha256 'aa2d67d5c481fa2b49909eef338898615e68ffb5a93cd2d83ea8566c7b7d3088'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
