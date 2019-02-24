//
//  Self Driving Car.swift
//  Classes and Objects
//
//  Created by Sagar Rikame on 12/3/18.
//  Copyright © 2018 Sagar Rikame. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    var destination : String?
    
    override func drive() {
        super.drive()
        if let setDestination = destination{
            print("Driving towards "+setDestination)
        }
    }
}
