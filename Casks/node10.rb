cask 'node10' do
  version '10.0.0'
  sha256 'a681315eb21f3f9509383eaa85ac5695884baa58f062e5ab5d5c25d5e8546911'

  # https://npm.taobao.org/mirrors/node/latest-v10.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
