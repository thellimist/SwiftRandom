task default: :install


desc "Install dependencies"
task :install do
  # Check Homebrew
  if %x(which brew).empty?
    sh %Q(ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)")
  else
    sh %Q(brew --version)
  end

  # Check Carthage
  if %x(brew list | grep -i carthage).empty?
    sh %Q(brew install carthage)
  else
    sh %Q(carthage version)
  end

  # Check xctool
  if %x(brew list | grep -i xctool).empty?
    sh %Q(brew install xctool)
  else
    sh %Q(xctool --version)
  end

  # Install dependencies with Carthage
  sh %Q(carthage bootstrap --platform ios)
end


desc "Run tests"
task :test do
  sh %Q(xctool -project SwiftRandom.xcodeproj -scheme SwiftRandom-iOS -sdk iphonesimulator9.1 build test)
end
