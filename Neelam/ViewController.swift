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
    }


}

func reverse(text: String) -> String {
    return String(text.reversed())
}
