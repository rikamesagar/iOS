//
//  Car.swift
//  Classes and Objects
//
//  Created by Sagar Rikame on 12/3/18.
//  Copyright © 2018 Sagar Rikame. All rights reserved.
//

import Foundation

enum CarType {
    case Coupe
    case Sedan
    case HatchBack
}

class Car {
    
    var color = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    
    init () {
        
    }
    
    convenience init (customerChosenColor : String){
        self.init()
        color = customerChosenColor
    }
    
    func drive() {
        print("Car is Moving")
    }
    
}
    

