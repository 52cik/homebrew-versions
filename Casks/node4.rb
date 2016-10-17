cask 'node4' do
  version '4.6.0'
  sha256 '0359c50c5d7e887c7f17d7ea4f42b1776ac8df263c6471bf8054b5c9f3d42a67'

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
