cask 'node6' do
  version '6.4.0'
  sha256 '4d27bd28de1b5cfdc1305915855d6024ac9e2b16bc443829ff93b796a880a3aa'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
