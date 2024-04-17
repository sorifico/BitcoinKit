Pod::Spec.new do |spec|
  spec.name = 'BitcoinKit'
  spec.version = '1.1.0'
  spec.summary = 'Bitcoin(BCH/BTC) protocol toolkit for Swift'
  spec.description = <<-DESC
                       The BitcoinKit library is a Swift implementation of the Bitcoin protocol. This library was originally made by Katsumi Kishikawa. It allows maintaining a wallet and sending/receiving transactions. It comes with a simple wallet app showing how to use it.
                       ```
                    DESC
  spec.homepage = 'https://github.com/sorifico/BitcoinKit'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'BitcoinKit developers' => 'sorifico@sorifico.tch' }

  spec.requires_arc = true
  spec.source = { git: 'https://github.com/sorifico/BitcoinKit.git', tag: "v#{spec.version}" }
  spec.source_files = 'BitcoinKit/**/*.{h,m,swift}', 'Sources/BitcoinKit/**/*.{h,m,swift}'
  spec.private_header_files = 'BitcoinKit/**/BitcoinKitPrivate.h'
  spec.exclude_files = 'Sources/**/LinuxSupport.swift'
  spec.module_map = 'BitcoinKit/BitcoinKit.modulemap'
  spec.ios.deployment_target = '8.0'
  spec.swift_version = '5.0'

  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/BitcoinKit/Libraries',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/BitcoinKit/Libraries/openssl/include" "${PODS_ROOT}/BitcoinKit/Libraries/secp256k1/include"',
                               'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/BitcoinKit/Libraries/openssl/lib" "${PODS_ROOT}/BitcoinKit/Libraries/secp256k1/lib"',
                               'OTHER_SWIFT_FLAGS' => '-D BitcoinKitXcode' }
  spec.preserve_paths = ['setup', 'Libraries']
  spec.prepare_command = 'sh setup/build_libraries.sh'
end
