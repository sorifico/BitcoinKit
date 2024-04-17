### Welcome to BitcoinKit

The BitcoinKit library is a Swift implementation of the Bitcoin protocol which support both BCH and BTC.

BitcoinKit is a swift bitcoin library that allows maintaining a wallet, sending or receiving transactions.

Features
--------

- Encoding/decoding addresses: base58, P2PKH, P2SH, WIF format.
- Transaction building blocks: inputs, outputs, scripts.
- EC keys and signatures.
- BIP32, BIP44 hierarchical deterministic wallets.
- BIP39 implementation.

Requirements
------------
- iOS 12.0+ / Mac OS X 10.11+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 10.0+
- Swift 5.0+

Installation
------------

Simply add the following lines to dependencies of your Package.swift:

```swift
.package(url: "https://github.com/sorifico/BitcoinKit", .upToNextMinor(from: "1.1.0"))
```

License
-------

BitcoinKit is available under the MIT license. See the LICENSE file for more info.


