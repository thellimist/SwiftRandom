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
	Randoms.randomBetween(10,20)) 

	// Return true 30%, false %70
	Randoms.randomPercentageisOver(70)

	// Return true or false
	Randoms.randomBool()

	// Return random NSDate today > and > today - 7. 
	Randoms.randomDateWithinDaysBeforeToday(7)

	// Return UIColor. Alpha channel always 1.
	Randoms.randomColor()

	// Return random name
	Randoms.randomName()

	// Return "Male" or "Female" as String
	Randoms.randomGender()

	// Return random conversation
	Randoms.randomConversation()

	// Return random title 
	Randoms.randomTitle()

	// Return random tag as string 
	Randoms.randomTag()
}

```

###Requirements
- Swift version 2.0

###Imporovement
Feel free adding your own random datas functions and sending pull requests.

###License
SwiftRandom is available under the MIT license. See the [LICENSE file](https://github.com/thellimist/SwiftRandom/blob/master/LICENSE).


