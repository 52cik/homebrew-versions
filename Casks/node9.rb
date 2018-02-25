cask 'node9' do
  version '9.6.1'
  sha256 'd8cbbe7723d68bf3c480391897d07ee0d8496d0a92e4fa191302fc8b07374b49'

  # https://npm.taobao.org/mirrors/node/latest-v9.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
