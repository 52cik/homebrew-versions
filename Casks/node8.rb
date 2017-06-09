cask 'node8' do
  version '8.1.0'
  sha256 '6950b83270e0e45ca7b9a59b66862131d0bdb6d90ec3e5dabb2ef691ac172cb0'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
