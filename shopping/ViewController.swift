//
//  ViewController.swift
//  shopping
//
//  Created by Chi-Che Hsieh on 2018/5/22.
//  Copyright © 2018年 ppquitmax. All rights reserved.
//

import UIKit

var ADtimeCount:Int = 0

class ViewController: UIViewController {
    @IBOutlet weak var ADImageView: UIImageView!
    @IBOutlet weak var myStepper1: UIStepper!
    @IBOutlet weak var myStepper2: UIStepper!
    @IBOutlet weak var myStepper3: UIStepper!
    @IBOutlet weak var myStepper4: UIStepper!
    @IBOutlet weak var itemCount1: UILabel!
    @IBOutlet weak var itemCount2: UILabel!
    @IBOutlet weak var itemCount3: UILabel!
    @IBOutlet weak var itemCount4: UILabel!
    @IBOutlet weak var totalSum: UILabel!
    
    var totalValue = NumberFormatter()
    
    @IBAction func StepperTrigger(_ sender: Any) {
        myStepper1.maximumValue = 10
        myStepper2.maximumValue = 10
        myStepper3.maximumValue = 10
        myStepper4.maximumValue = 10
        itemCount1.text = String(Int(myStepper1.value))
        itemCount2.text = String(Int(myStepper2.value))
        itemCount3.text = String(Int(myStepper3.value))
        itemCount4.text = String(Int(myStepper4.value))
        
        totalValue.numberStyle = .decimal
        totalSum.text = totalValue.string(for: Int(myStepper1.value*5000)+Int(myStepper2.value*3500)+Int(myStepper3.value*4000)+Int(myStepper4.value*2500))
        
        //totalSum.text = String(Int(myStepper1.value*5000)+Int(myStepper2.value*3500)+Int(myStepper3.value*4000)+Int(myStepper4.value*2500))
        
    }
    
    @IBAction func myButton(_ sender: Any) {
        myStepper1.value = 0
        itemCount1.text = String(Int(myStepper1.value))
        myStepper2.value = 0
        itemCount2.text = String(Int(myStepper2.value))
        myStepper3.value = 0
        itemCount3.text = String(Int(myStepper3.value))
        myStepper4.value = 0
        itemCount4.text = String(Int(myStepper4.value))
        
        totalSum.text = "0"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playImage()
    {
        //圖檔名稱陣列
        let fileName = [#imageLiteral(resourceName: "AD01"), #imageLiteral(resourceName: "AD02"), #imageLiteral(resourceName: "AD03")]
        /*
        //init a empty array , for append UIImage
        var arrayImage: [UIImage] = []
        
        //append  UIImage array
        for i in 0...(fileName.count-1) {
            arrayImage.append(fileName[i])
        }
        */
        //set Animation source
        // ADImageView.animationImages = arrayImage
        ADImageView.animationImages = fileName
        
        //play total time  , if you have 6 image , total 12 sec , every one image show 2 sec
        ADImageView.animationDuration = 6
        
        //play times , if set 0  ,   continue  paly image .
        ADImageView.animationRepeatCount = 0
        
        //start play
        ADImageView.startAnimating()
        
        //stop play
        //myImage.stopAnimating()
    }


}

