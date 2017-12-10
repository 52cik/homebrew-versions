cask 'node4' do
  version '4.8.7'
  sha256 'bbcda4c0bd89f25ed59a08b025e7b7358997de36cb38033836948a00788f4858'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
