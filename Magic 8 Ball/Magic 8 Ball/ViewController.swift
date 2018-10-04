//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sagar Rikame on 8/23/18.
//  Copyright © 2018 Sagar Rikame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomAskImageIndex : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!

    let askImageArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        changeImage()
    }
    func changeImage(){
        randomAskImageIndex = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: askImageArray[randomAskImageIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeImage()
    }
}

