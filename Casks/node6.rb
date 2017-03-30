cask 'node6' do
  version '6.10.1'
  sha256 '14ce9adc6a08bbbce9005e4bbb0a788407afd280da93744ed1cb4c563bc97dcb'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
