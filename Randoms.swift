//
//  Randoms.swift
//
//  Created by Furkan Yilmaz on 7/10/15.
//  Copyright (c) 2015 Furkan Yilmaz. All rights reserved.
//

import UIKit

// each type has its own random

extension Int {
    static func random(lower: Int = 0, _ upper: Int = 100) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
}

extension Bool {
    static func random() -> Bool {
        return Int.random() % 2 == 0
    }
}

extension NSDate {
    static func randomWithinDaysBeforeToday(days: Int) -> NSDate {
        let today = NSDate()
        
        guard let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian) else {
            print("no calendar \"NSCalendarIdentifierGregorian\" found")
            return today
        }
        
        let r1 = arc4random_uniform(UInt32(days))
        let r2 = arc4random_uniform(UInt32(23))
        let r3 = arc4random_uniform(UInt32(23))
        let r4 = arc4random_uniform(UInt32(23))
        
        let offsetComponents = NSDateComponents()
        offsetComponents.day = Int(r1) * -1
        offsetComponents.hour = Int(r2)
        offsetComponents.minute = Int(r3)
        offsetComponents.second = Int(r4)
        
        guard let rndDate1 = gregorian.dateByAddingComponents(offsetComponents, toDate: today, options: []) else {
            print("randoming failed")
            return today
        }
        return rndDate1
    }
    
    static func random() -> NSDate {
        let randomTime = NSTimeInterval(arc4random_uniform(UInt32.max))
        return NSDate(timeIntervalSince1970: randomTime)
    }
    
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
}

extension UIColor {
    static func random(randomAlpha: Bool = false) -> UIColor {
        let randomRed = CGFloat.random()
        let randomGreen = CGFloat.random()
        let randomBlue = CGFloat.random()
        let alpha = randomAlpha ? CGFloat.random() : 1.0
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: alpha)
    }
}

extension Array {
    /// Randoms extension
    func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

struct Randoms {
    
    // If you prefer all Random at one place
    
    static func randomInt(lower: Int = 0, _ upper: Int = 100) -> Int {
        return Int.random(lower, upper)
    }
    
    static func randomPercentageisOver(percentage: Int) -> Bool {
        return Int.random() > percentage
    }
    
    static func randomBool() -> Bool {
        return Bool.random()
    }
    
    static func randomDateWithinDaysBeforeToday(days: Int) -> NSDate {
        return NSDate.randomWithinDaysBeforeToday(days)
    }

    static func randomDate() -> NSDate {
        return NSDate.random()
    }
    
    static func randomCGFloat() -> CGFloat {
        return CGFloat.random()
    }
    
    static func randomColor(randomAlpha: Bool = false) -> UIColor {
        return UIColor.random(randomAlpha)
    }
    
    
    
    // Fake Generator for placeholder or fake datasource (name conversation ...)
    
    
    static func randomFakeName() -> String {
        let firstNameList = ["Henry", "William", "Geoffrey", "Jim", "Yvonne", "Jamie", "Leticia", "Priscilla", "Sidney", "Nancy", "Edmund", "Bill", "Megan"]
        let lastNameList = ["Pearson", "Adams", "Cole", "Francis", "Andrews", "Casey", "Gross", "Lane", "Thomas", "Patrick", "Strickland", "Nicolas", "Freeman"]
        return firstNameList.randomItem() + " " + lastNameList.randomItem()
    }
    
    static func randomFakeGender() -> String {
        return Bool.random() ? "Male" : "Female"
    }
    
    static func randomFakeConversation() -> String {
        let convoList = ["You embarrassed me this evening.","You don't think that was just lemonade in your glass, do you?","Do you ever think we should just stop doing this?","Why didn't he come and talk to me himself?","Promise me you'll look after your mother.","If you get me his phone, I might reconsider.","I think the room is bugged.","No! I'm tired of doing what you say.","For some reason, I'm attracted to you."]
        return convoList.randomItem()
    }
    
    static func randomFakeTitle() -> String {
        let titleList = ["CEO of Google", "CEO of Facebook", "VP of Marketing @Uber", "Business Developer at IBM", "Jungler @ Fanatic", "B2 Pilot @ USAF"]
        return titleList.randomItem()
    }
    
    static func randomFakeTag() -> String {
        let tagList = ["meta", "forum", "troll", "meme", "question", "important", "like4like", "f4f"]
        return tagList.randomItem()
    }
    
    static func randomEnglishHonorific() -> String {
        let englishHonorificsList = ["Mr.", "Ms.", "Dr.", "Mrs.", "Mz.", "Mx.", "Prof."]
        return englishHonorificsList.randomItem()
    }
    
    static func randomFakeNameAndEnglishHonorific() -> String {
        let englishHonorific = randomEnglishHonorific()
        let name = randomFakeName()
        return englishHonorific + " " + name
    }
}
