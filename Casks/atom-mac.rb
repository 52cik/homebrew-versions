cask 'atom-mac' do
  version '1.11.1'
  sha256 'da725e3b224f772d64060cd8dc75a582946913c6d8e57461a271b9cb69a3cb62'

  # github.com/atom/atom was verified as official when first introduced to the cask
  # url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  url "https://npm.taobao.org/mirrors/atom/#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: 'f5933ae7d15513bd468119d0cdc86c8d93194b71b27bd524a8b259e3dd9f1bd7'
  name 'Github Atom'
  homepage 'https://atom.io/'
  license :mit

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Atom.app'
  binary "#{appdir}/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm", target: 'apm'
  binary "#{appdir}/Atom.app/Contents/Resources/app/atom.sh", target: 'atom'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/.atom',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/Atom',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.github.atom.ShipIt',
                '~/Library/Caches/com.github.atom',
                '~/Library/Preferences/com.github.atom.plist',
              ]
end