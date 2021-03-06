//
//  CountViewController.swift
//  FunnyNumber
//
//  Created by alccmac on 9/10/2560 BE.
//  Copyright © 2560 SorapongPh. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {

    var numberAint: Int = 0
    
    var myConstantClass = MyConstantClass()
    
    var objTimer = Timer()
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func startButton(_ sender: Any) {
        objTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.playTime), userInfo: nil, repeats: true)
    }
    
    func playTime() -> Void {
        numberAint += 1
        
        if(numberAint == myConstantClass.numberStringArray.count){
            numberAint = 0
        }
        
        numberLabel.text = myConstantClass.numberStringArray[numberAint]
    }
    
    @IBAction func stopButton(_ sender: Any) {
        print("Click Stop")
        
        objTimer.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
