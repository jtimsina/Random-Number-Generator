//
//  ViewController.swift
//  test_one
//
//  Created by Yam Timsina on 12/8/19.
//  Copyright © 2019 TimsinaJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var num = 0
    @IBOutlet weak var label: UILabel!
    @IBAction func button(_ sender: Any) {
        print("Button is pressed")
        self.view.backgroundColor = generateRandomColor()

        label.isHidden = false
        
        self.label.text = "You Pressssed the Button for: \n" + String(num + 1) + " times"
        num = num + 1
      
    }
    //button.isHidden = true
    func generateRandomColor() -> UIColor {
      let hue : CGFloat = CGFloat(arc4random() % 256) / 256
      let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
      let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
      return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}

