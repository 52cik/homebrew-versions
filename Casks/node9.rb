cask 'node9' do
  version '9.10.1'
  sha256 '84ca5b4dbe2ab723a13ae3e8f21a2f9a366d711ab8090068fc54ed1f45cfb2f1'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
