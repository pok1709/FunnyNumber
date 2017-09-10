//
//  ViewController.swift
//  FunnyNumber
//
//  Created by alccmac on 9/10/2560 BE.
//  Copyright © 2560 SorapongPh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Implicit
    var numberAInt: Int = 1
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decButton(_ sender: Any) {
        print("Click DEC")
        let myClass = MyClass()
        numberAInt = myClass.decNumber(intNumber: numberAInt)
        numberLabel.text = String(numberAInt)
    }
    
    @IBAction func incButton(_ sender: Any) {
        print("Click INC")
        numberAInt = addNumber(intNumber: numberAInt)
        numberLabel.text = String(numberAInt)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        numberAInt = resetNum(intNumber: 1)
        numberLabel.text = String(numberAInt)
    }
    
    //Function Add Number
    func addNumber(intNumber: Int) -> Int {
        let result = intNumber + 1
        return result
    }
    
    func resetNum(intNumber: Int) -> Int {
        return intNumber
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

