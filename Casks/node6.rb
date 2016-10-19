cask 'node6' do
  version '6.9.0'
  sha256 'c91da719ec4db0f4397f93dbf604d4d77f3424e7ac5778ca120f61d5dd0bac9e'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
