//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
     
        membersNamesArray.append(member)
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = encryptWith(isemoji: false, array: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = encryptWith(isemoji: true, array: membersNamesArray)
            //secretNameEmoji2(membernamearray: membersNamesArray)
            //secretNameEmoji(membernamearray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
   
    
    func secretNameLetter(membernamearray :[String])-> String
    
    {
      var firstLetter = ""
        for i in 0..<membernamearray.count {
            firstLetter += membernamearray[i].prefix(1).uppercased()
        }
        return firstLetter
    }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
   
    
    func secretNameEmoji2(membernamearray :[String])-> String {
     var Emojiname = ""
  //  let emojiLetter: [String: String]
        
       var letters =
        [
        "a": "🐶",
        "b": "😈",
        "c": "🐰",
        "d": "🐼",
        "e": "🦁",
        "f": "🐨",
        "g": "🐥",
        "h": "🦄",
        "i": "🦋",
        "j": "🦀",
        "k": "🐙",
        "l": "🐬",
        "m": "🐩",
        "n": "🐳",
        "o": "⚡️",
        "p": "🌟",
        "q": "🌈",
        "r": "☃️",
        "s": "💥",
        "t": "💨",
        "u": "🍭",
        "v": "🍷",
        "w": "🧠",
        "x": "🧊",
        "y": "🍪",
        "z": "⚽️"
        ]
        
    
       for i in membernamearray {
        let perfix = String(i.prefix(1))
        let emoji = letters[perfix] ?? "⁉️"
         if emoji != "⁉️"
         {
        Emojiname += emoji
        }}
        return Emojiname
        
    
    }
   
    
    // MARK: -   النهاية
    
    // Bouns
   
    func encryptWith(isemoji: Bool, array: [String]) -> String {
    if isemoji {
    return secretNameEmoji2(membernamearray: array)
    }
    
    else {
    return secretNameLetter(membernamearray: array)
    }
}



}
