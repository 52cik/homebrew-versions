cask 'node8' do
  version '8.9.3'
  sha256 '05b95b18cd170cbf397b83f9cf098c7132a816354b45a9db8454347215df91fb'

  # https://npm.taobao.org/mirrors/node/latest-v8.x/SHASUMS256.txt

  url "http://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}.pkg"
  name 'Node.js'
  homepage 'https://nodejs.org/'
  license :mit

  pkg "node-v#{version}.pkg"

  uninstall pkgutil: 'org.nodejs.node.pkg'
end
