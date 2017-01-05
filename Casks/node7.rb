cask 'node7' do
  version '7.4.0'
  sha256 'c2dc012f5d8c58116ac2916e3961461db4dddacf63e19cff6d9787afd2e1169b'

  # https://npm.taobao.org/mirrors/node/latest-v7.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
