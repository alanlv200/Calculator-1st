//
//  ViewController.swift
//  Calculator
//
//  Created by 平山大翼 on 2016/02/05.
//  Copyright © 2016年 平山大翼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var label: UILabel!
    var number: Int = 0
    var number2: Int = 0
    var operation: Int = 0
    
    @IBAction func select1() {
        number = number*10 + 1
        label.text = String(number)
    }
    
    @IBAction func select2() {
        number = number*10 + 2
        label.text = String(number)
    }

    @IBAction func select3() {
        number = number*10 + 3
        label.text = String(number)
    }
    
    @IBAction func select4() {
        number = number*10 + 4
        label.text = String(number)
    }
    
    @IBAction func select5() {
        number = number*10 + 5
        label.text = String(number)
    }
    
    @IBAction func select6() {
        number = number*10 + 6
        label.text = String(number)
    }

    @IBAction func select7() {
        number = number*10 + 7
        label.text = String(number)
    }

    @IBAction func select8() {
        number = number*10 + 8
        label.text = String(number)
    }

    @IBAction func select9() {
        number = number*10 + 9
        label.text = String(number)
    }
    
    @IBAction func select0() {
        number = number*10 + 0
        label.text = String(number)
    }

    @IBAction func plus() {
        operation = 0
        number2 = number
        number = 0
        label.text = String(number)
    }
    
    @IBAction func minus() {
        operation = 1
        number2 = number
        number = 0
        label.text = String(number)
    }
    
    @IBAction func kakeru() {
        operation = 2
        number2 = number
        number = 0
        label.text = String(0)
    }
    
    @IBAction func waru() {
        operation = 3
        number2 = number
        number = 0
        label.text = String(0)
    }
    
    @IBAction func clear() {
        number = 0
        number2 = 0
        label.text = String(0)
    }
    
    @IBAction func equal() {
        if operation == 0 {
            label.text = String(number + number2)
        }else if operation == 1 {
            label.text = String(number2 - number)
        }else if operation == 2 {
            label.text = String(number2 * number)
        }else {
            label.text = String(number2 / number)
        }
    }
}

