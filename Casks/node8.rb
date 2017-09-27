cask 'node8' do
  version '8.6.0'
  sha256 'd3850a4b59d336737f7bfaaf0323359cdbdb92e7e8d38e4efb9038ed19e22215'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
