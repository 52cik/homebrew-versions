cask 'atom-mac' do
  version '1.16.0'
  sha256 '3fa561d6d9dbf13166e051820651ef3c2ec7954f8c9107d69b49731c8da144d5'

  # github.com/atom/atom was verified as official when first introduced to the cask
  # url "https://github.com/atom/atom/releases/download/v#{version}/atom-mac.zip"
  url "https://npm.taobao.org/mirrors/atom/#{version}/atom-mac.zip"
  appcast 'https://github.com/atom/atom/releases.atom',
          checkpoint: '8716e9c7d068a270f51b0008b6bc4cf58ff901d6000294591ec4bebb1b97dd09'
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
