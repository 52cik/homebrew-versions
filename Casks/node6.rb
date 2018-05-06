cask 'node6' do
  version '6.14.2'
  sha256 'e65ea1fc39bb1fa73a6a18b8fa46435eed4a3038822eaa4aaa40d2983d205dda'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
