cask 'node4' do
  version '4.8.4'
  sha256 'b228e03c67aafb2b01456ef58dc6b238db6d31627205c7a69a6e8e072c961c9a'

  # https://npm.taobao.org/mirrors/node/latest-v4.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
