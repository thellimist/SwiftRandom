SwiftRandom
==============
SwiftRandom is a tiny help suite for generating random data such as 
* Random Names
* Random Gender
* Random Title
* Random Tag
* Random Number in Interval
* Random Conversation
* Random Bools
* Random Color
* Random Date before today
* Roll dice over a certain percentage

### Installation
Download and drop 'Randoms.swift' in your project.

### Usage
```
func createRandom() {
	// Return random Int >= 10 and <= 20
	// Example Output: 13
	Randoms.randomBetween(10,20)  

	// Return true 30%, false %70
	// Example Output: false
	Randoms.randomPercentageisOver(70)

	// Return true or false
	// Example Output: false
	Randoms.randomBool()

	// Return random NSDate today > and > today - 7. 
	// Example Output: 2015-10-08 03:55:09 +0000
	Randoms.randomDateWithinDaysBeforeToday(7)

	// Return UIColor. Alpha channel always 1.
	// Example Output: UIDeviceRGBColorSpace 0.645737 0.126625 0.52535 1
	Randoms.randomColor()

	// Return random name
	// Example Output: "Megan Freeman"
	Randoms.randomName()

	// Return "Male" or "Female" as String
	// Example Output: "Female"
	Randoms.randomGender()

	// Return random conversation
	// Example Output: "No! I'm tired of doing what you say."
	Randoms.randomConversation()

	// Return random title 
	// Example Output: "B2 Pilot @ USAF"
	Randoms.randomTitle()

	// Return random tag as string 
	// Example Output: "question"
	Randoms.randomTag()
}

```

###Requirements
- Swift version 2.0

###Imporovement
Feel free adding your own random datas functions and sending pull requests.

###License
SwiftRandom is available under the MIT license. See the [LICENSE file](https://github.com/thellimist/SwiftRandom/blob/master/LICENSE).


