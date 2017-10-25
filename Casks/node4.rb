cask 'node4' do
  version '4.8.5'
  sha256 '19fdf0f9b070ebc9a72189c97546fabd50c0b29da50415e69f4bc6a47a3cf8db'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
