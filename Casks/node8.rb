cask 'node8' do
  version '8.7.0'
  sha256 'f99883b98ef6f8947c2e29588da3fde98159262bb57d75a97eae4d0fdcbb6f79'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
