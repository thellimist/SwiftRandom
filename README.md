SwiftRandom
==============

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/SwiftRandom.svg)](https://img.shields.io/cocoapods/v/SwiftRandom.svg)

SwiftRandom is a tiny help suite for generating random data such as
* Random human stuff like: names, gender, titles, tags, conversations
* Random data types like: Int, CGFloat, Bool, UIColor, NSDate, NSURL, element in Array

## Usage

```swift
func asExtension() {
	Int.random(2, 77) // Random between 2-77
	Int.random(2...77)
	Int32.random(13, 37) // Random between 13-37
	Int32.random(13...37)
	Double.random()
	Float.random(3.2, 4.5) // Random between 3.2-4.5
	CGFloat.random()
	NSDate.random()
	NSDate.randomWithinDaysBeforeToday(7)
	NSDate.random(between: Date().addingTimeInterval(TimeInterval(-5*24*60*60)), and:Date()) // Random date between now and 5 days ago
	UIColor.random()
	NSURL.random()
	
	// Array Extensions
	var someArray = ["hello", "world"]
	someArray[0..<someArray.count].randomItem() // Array slice
	someArray.randomItem()
	
	// String Extensions
	String.random(ofLength: 16)
	String.random(minimumLength: 16, maximumLength: 32)
	String.random(withCharactersInString: "abc", ofLength: 16)
	String.random(withCharactersInString: "abc", minimumLength: 16, maximumLength: 32)
}
```

```swift
func asMethods() {
	// Return random Int >= 10 and <= 20
	// Example Output: 13
	Randoms.randomInt(10,20)
	
	// Return random Int32 >= 10 and <= 20
	// Example Output: 13
	Randoms.randomInt32(10,20)
	
	// Returns a random 16 character long string containing alphanumeric characters 
	Randoms.randomString(ofLength: 16)
	
	// Returns a random string containing alphanumeric characters ranging in length from 16 to 32.
	Randoms.randomString(minimumLength: 16, maximumLength: 32)
	
	// Returns a random 16 character long string containing the specified characters
	Randoms.randomString(withCharactersInString: "abc", ofLength: 16)
	
	// Returns a random string of length between 16 and 32 containing the specified characters
	Randoms.randomString(withCharactersInString: "abc", minimumLength: 16, maximumLength: 32)
	
	// Return random Double >= 10 and <= 20
	// Example Output: 11.511219042938
	Randoms.randomDouble(10,20)

	// Return random Float >= 10 and <= 20
	// Example Output: 17.0361
	Randoms.randomFloat(10,20)

	// Return random CGFloat between 1 >= and >= 0
	// Example Output: 0.622616
	Randoms.randomCGFloat()

	// Return true 30%, false %70
	// Example Output: false
	Randoms.randomPercentageisOver(70)

	// Return true or false
	// Example Output: false
	Randoms.randomBool()

	// Return random NSDate today > and > today - 7.
	// Example Output: 2015-10-08 03:55:09 +0000
	Randoms.randomDateWithinDaysBeforeToday(7)

	// Random Date since 1970
	// Example Output: 1997-02-01 15:27:08 +0000
	Randoms.randomDate()

	// Return UIColor. Alpha channel always 1.
	// Example Output: UIDeviceRGBColorSpace 0.645737 0.126625 0.52535 1
	Randoms.randomColor()

	// Return random NSURL
	// Example Output: http://leagueoflegends.com/
	Randoms.randomNSURL()

	// ==================== Fake Generators for Fake Datasources ==================== //

	// Return random name
	// Example Output: "Megan Freeman"
	Randoms.randomFakeName()

	// Return random first name
	// Example Output: "Megan"
	Randoms.randomFakeFirstName()

	// Return random last name
	// Example Output: "Freeman"
	Randoms.randomFakeLastName()

	// Return random fake name prefixed by English honorific
	// Example Output: "Dr. Megan Freeman"
	Randoms.randomFakeNameAndEnglishHonorific()

	// Return "Male" or "Female" as String
	// Example Output: "Female"
	Randoms.randomFakeGender()

	// Return random conversation
	// Example Output: "No! I'm tired of doing what you say."
	Randoms.randomFakeConversation()

	// Return random title
	// Example Output: "B2 Pilot @ USAF"
	Randoms.randomFakeTitle()

	// Return random tag as string
	// Example Output: "question"
	Randoms.randomFakeTag()
	
	// Return random currency as String
	// Example Output: "EUR"
	Randoms.randomCurrency()
	
	// Return random (non-existing) gravatar as UIImage?
	// The image is optional in case of network issues
	Randoms.randomGravatar { (image, error) -> Void in
		// Handle the image/error
	}
	
	// For consistance behaviour you can create custom Gravatar
	Randoms.createGravatar(Randoms.GravatarStyle.Retro) { (image, error) -> Void in
		// Handle the image/error
	}
}

```

### Requirements

- Swift version 2.0


## Installation

### Install via Carthage

* Create a `Cartfile` with the following specification and run `carthage update`.

```
github "thellimist/SwiftRandom" >= 1.0.0
```

* Follow the [instructions](https://github.com/Carthage/Carthage#if-youre-building-for-ios) to add the framework to an iOS project.

### Install via CocoaPods

You can use [CocoaPods](http://cocoapods.org/) to install `SwiftRandom` by adding it to your `Podfile`:
```ruby
platform :ios, '8.0'
use_frameworks!
pod  'SwiftRandom' #Stable release for Swift 3.0
```

To download older version you can use
```
pod 'SwiftRandom', :git => 'https://github.com/thellimist/SwiftRandom.git' #Latest release for Swift 3.0
pod 'SwiftRandom', :git => 'https://github.com/thellimist/SwiftRandom.git', :branch => '2.x' #For Swift 2.3

```

### Install Manually

- Download and drop 'Randoms.swift' in your project.


### Improvement
- Feel free adding your own random data functions and sending pull requests.

##### Possible features:
- Random wildlife pictures (Should not include the image inside project, should load it from web when needed)
- Make OSX compatiable and add here: https://github.com/AndrewSB/awesome-osx
- Random JSON
- Random Gifs (Should not include gifs inside the project, should load it from web when needed)
- Random Videos (Should not include videos inside the project, should load it from web when needed)
- Implement `SwiftRandom` as a protocol any class can conform to (`Post.random()` would give you a random post)

### License
- SwiftRandom is available under the MIT license. See the [LICENSE file](https://github.com/thellimist/SwiftRandom/blob/master/LICENSE).

## Keywords
random, swift, data, generator, faker, fake, gravatar
