//
//  ViewController.swift
//  projectEdu
//
//  Created by jakub skrzypczynski on 27/03/2017.
//  Copyright © 2017 test project. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    
    var tempDictionary = chineseDictionaryData
    
    var randomKeyVariable: String = ""
    var randomValueVariable: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        
    }
    
    
    func populateRandomChineseCharacter (Dictionary:[String:String]) -> String {
        
        let index: Int = Int(arc4random_uniform(UInt32(Dictionary.count)))
        let randomVal = Array(Dictionary.values)[index]
        
        randomValueVariable = randomVal
        
        return randomVal
    }
    
    func populateRandomEnglishWord (Dictionary:[String:String]) -> String {
        let index: Int = Int(arc4random_uniform(UInt32(Dictionary.count)))
        let randomKeys = Array(Dictionary.keys)[index]
        
        randomKeyVariable = randomKeys
        
        
        return randomKeys
        
    }
    
    
    
    func equalOrNotEqual(Key: String, Value: String) -> Bool {
    
        for (key, Value) in tempDictionary {
            if (key.contains(Value))
            {
                print("correct answer")

                return true
                            }
        }
        print("wrong answer")
            return false
        
}
    
    @IBAction func testButton(_ sender: UIButton) {
        
        if equalOrNotEqual(Key:randomKeyVariable,Value:randomValueVariable ) == true {
            
            print("correct answer")
        } else {
            print("not correct")
        }
        
        
    }
    
    
    @IBAction func NextButton(_ sender: UIButton) {
        
        
        let chineseCharacter = populateRandomChineseCharacter(Dictionary: tempDictionary)
        let englishWord = populateRandomEnglishWord(Dictionary: tempDictionary)
        
        print("this is chinese character \(chineseCharacter)")
        print("this is english word \(englishWord)")
        
    }
    

    
    
    
    
    
}

