cask 'node6' do
  version '6.10.2'
  sha256 '6a6fb245648236dfd80f50b5d35b54584ad666207b41decfa965581b96d68cd9'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
