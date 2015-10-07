//
//  Randoms.swift
//
//  Created by Furkan Yilmaz on 7/10/15.
//  Copyright (c) 2015 Furkan Yilmaz. All rights reserved.
//

import UIKit

struct Randoms {
    
    static func randomBetween(lower: Int, _ upper: Int) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower + 1)))
    }
    
    static func randomPercentageisOver(percentage: Int) -> Bool {
        let random = Int(arc4random_uniform(100))
        if random > percentage {
            return true
        }
        return false
    }
    
    static func randomBool() -> Bool {
        return randomPercentageisOver(50)
    }
    
    static func randomDateWithinDaysBeforeToday(days: Int) -> NSDate {
        let r1 = arc4random_uniform(UInt32(days))
        let r2 = arc4random_uniform(UInt32(23))
        let r3 = arc4random_uniform(UInt32(23))
        let r4 = arc4random_uniform(UInt32(23))
        
        let today = NSDate()
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        
        let offsetComponents = NSDateComponents()
        offsetComponents.day = Int(r1) * -1
        offsetComponents.hour = Int(r2)
        offsetComponents.minute = Int(r3)
        offsetComponents.second = Int(r4)
        
        let rndDate1 = gregorian?.dateByAddingComponents(offsetComponents, toDate: today, options: [])
        return rndDate1!
    }
    
    private static func randomCGFloatFrom0to1() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
    
    static func randomColor() -> UIColor {
        let randomRed: CGFloat = randomCGFloatFrom0to1()
        let randomGreen: CGFloat = randomCGFloatFrom0to1()
        let randomBlue: CGFloat = randomCGFloatFrom0to1()
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    static func randomName() -> String {
        let nameList = ["Henry Pearson","William Adams","Geoffrey Cole","Jim Francis","Yvonne Andrews","Jamie Casey","Leticia Gross","Priscilla Lane","Sidney Thomas","Nancy Patrick","Edmund Strickland","Bill Nicholas","Megan Freeman"]
        return nameList.randomItemFromArray()
    }
    
    static func randomGender() -> String {
        if randomPercentageisOver(50) {
            return "Male"
        } else {
            return "Female"
        }
    }
    
    static func randomConversation() -> String {
        let convoList = ["You embarrassed me this evening.","You don't think that was just lemonade in your glass, do you?","Do you ever think we should just stop doing this?","Why didn't he come and talk to me himself?","Promise me you'll look after your mother.","If you get me his phone, I might reconsider.","I think the room is bugged.","No! I'm tired of doing what you say.","For some reason, I'm attracted to you."]
        return convoList.randomItemFromArray()
    }
    
    static func randomTitle() -> String {
        let titleList = ["CEO of Google", "CEO of Facebook", "VP of Marketing @Uber", "Business Developer at IBM", "Jungler @ Fanatic", "B2 Pilot @ USAF"]
        return titleList.randomItemFromArray()
    }
    
    static func randomTag() -> String {
        let tagList = ["meta", "forum", "troll", "meme", "question", "important", "like4like", "f4f"]
        return tagList.randomItemFromArray()
    }
    
}

private extension Array {
    /// Randoms extension
    func randomItemFromArray() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
