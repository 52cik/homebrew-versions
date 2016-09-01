cask 'node6' do
  version '6.5.0'
  sha256 'bc79776fa04870cbdb3cc874d91b22c506caa6fc218cdcf1e2538e3de2248957'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
