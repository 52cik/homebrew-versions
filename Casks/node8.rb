cask 'node8' do
  version '8.1.4'
  sha256 '9c0a1fb2895f3d7865793fd64964ddfc8f3655e5b2beea28f35f78d782369d7a'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
