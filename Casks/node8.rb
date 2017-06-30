cask 'node8' do
  version '8.1.3'
  sha256 '6534587fc70b4384a78f2a8557c9fef4e40e7843205a373c401b2b8511ff79c4'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
