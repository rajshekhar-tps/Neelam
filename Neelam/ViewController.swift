//
//  ViewController.swift
//  Neelam
//
//  Created by Rajshekhar Sahu on 20/04/20.
//  Copyright © 2020 Rajshekhar Sahu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("The color is now blue")
        
        print(reverse(text: "stressed"))
        
        
        
        //String to Hex & HEx to String Conversion//
        
        let str = "Hello"
        let data = Data(str.utf8)
        let hexString = data.map{ String(format:"%02x", $0) }.joined()
        
        print("Hexa Decimal String >> \(hexString)")
        
        
       let d = Data(fromHexEncodedString: hexString)!
       let s = String(data: d, encoding: .isoLatin1)
        
        print("String from Hex >> \(s)")
        
        
        print("PINEAPPLE")
        print("BANANA")
        
        superman()
    }
    
    
    func name(){
        print("Your name is Peter")
    }

    
    
    func superman(){
        print("Superman is my friend")
    }
}



extension Data {

// From http://stackoverflow.com/a/40278391:
init?(fromHexEncodedString string: String) {

    // Convert 0 ... 9, a ... f, A ...F to their decimal value,
    // return nil for all other input characters
    func decodeNibble(u: UInt16) -> UInt8? {
        switch(u) {
        case 0x30 ... 0x39:
            return UInt8(u - 0x30)
        case 0x41 ... 0x46:
            return UInt8(u - 0x41 + 10)
        case 0x61 ... 0x66:
            return UInt8(u - 0x61 + 10)
        default:
            return nil
        }
    }

    self.init(capacity: string.utf16.count/2)
    var even = true
    var byte: UInt8 = 0
    for c in string.utf16 {
        guard let val = decodeNibble(u: c) else { return nil }
        if even {
            byte = val << 4
        } else {
            byte += val
            self.append(byte)
            
            
            }
                        even = !even
                    }
                    guard even else { return nil }
                }
            }
            

func convertHexStringToNormalString(hexString:String)->String!{
  if let data = hexString.data(using: .utf8){
      return String.init(data:data, encoding: .utf8)
  }else{ return nil}
}

func reverse(text: String) -> String {
    return String(text.reversed())
}
