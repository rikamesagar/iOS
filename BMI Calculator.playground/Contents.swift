import UIKit

func BMICalculator(Weight : Double, height : Double) -> String{
    
    let BMI = Weight/pow(height, 2)
    
    if(BMI > 25){
        
        return "You are overweight"
    
    }
    else if(18.5 < BMI){
        
        return "You are normal weight"
    
    }
    else{
        
        return "You are underweight"
    
    }
}

BMICalculator(Weight: 63, height: 1.8)
