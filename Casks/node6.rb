cask 'node6' do
  version '6.9.3'
  sha256 'b2898e8261a28df40d640672ee4fb61b4e46b4b87d601c863d2003ff97b5230b'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
