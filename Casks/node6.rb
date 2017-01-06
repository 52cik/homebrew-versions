cask 'node6' do
  version '6.9.4'
  sha256 '14b05f6b5039ab467d80d46a4dad01e3f170062cdf559d381a0b9a1c37dbe98c'

  # https://npm.taobao.org/mirrors/node/latest-v6.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
