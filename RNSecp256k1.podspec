require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = 'RNSecp256k1'
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = 'https://github.com/LedgerHQ/react-native-secp256k1'
  s.license             = package['license']
  s.author              = 'Ledger'
  s.source              = { :git => 'https://github.com/LedgerHQ/react-native-secp256k1.git', :tag => "v#{package['version']}" }
  s.platform            = :ios, '8.0'
  s.source_files         = 'ios/*.{h,mm,hpp,m}', 'secp256k1/include/*.h'
  s.dependency          'React'
end
