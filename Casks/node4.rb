cask 'node4' do
  version '4.4.2'
  sha256 '5d115f4d561f92c6b26f40e7d0217e99e4255e2051337bca15489c39597d05ba'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
