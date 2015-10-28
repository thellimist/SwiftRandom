# Check list
# change s.version
# pod lib lint SwiftRandom.podspec
# git tag <New Tag>
# git add & git commit
# git push
# pod spec lint SwiftRandom.podspec
# pod trunk push SwiftRandom.podspec

Pod::Spec.new do |s|
s.name             = "SwiftRandom"
s.version          = "0.1.7"
s.summary          = "A tiny generator of random data for swift"
s.description      = "A tiny generator of fake/random data for swift"
s.homepage         = "https://github.com/thellimist/SwiftRandom"
s.license          = 'MIT'
s.author           = { "thellimist" => "mufuyil@gmail.com" }
s.source           = { :git => "https://github.com/thellimist/SwiftRandom.git", :tag => s.version.to_s }
s.platform     = :ios, '8.0'
s.requires_arc = true
s.source_files = 'Randoms.swift'

end
