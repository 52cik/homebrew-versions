cask 'node4' do
  version '4.8.2'
  sha256 '25606ccd44d634b3796806e4c534456b235310e9c3bdbd0afb3e1fb5d0214371'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
