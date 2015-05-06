//
//  ViewController.swift
//  Make School OOP Challenge
//
//  Created by Julian Engel on 18/04/2015.
//  Copyright (c) 2015 Julo's Dev - JE. All rights reserved.
//

import UIKit

/*

Thank you for taking time to read through this. This would have been quicker, but I needed to go through Apple's Swift Docs to learn a few things in Swift. Here is the completed challenge.

Just run the programm and it will pop up in the debugger. Thank you.

https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097-CH3-ID0


*/





class ViewController: UIViewController {
    
    @IBOutlet weak var popLabel : UILabel!
    
    class Pet {
        
         var name : String = ""
        
        
        init( name : String, canMakeNoise : Bool )
        {
            
        self.name = name
        self.canMakeNoise = canMakeNoise
        }
        
        var noise : String
            {
                return ""
        }
        var canMakeNoise : Bool = true
        
        func eat () {
            
            println(" \(name) is eating")
            
        }
        
        func makeNoise()
        {
            if (canMakeNoise == true)
            {
                println(name + " " + noise)
            }
                
            else
            {
                println(name + " remains silent")
            }
        }
        
    }
    
    
    
    
    class Human {
        
        
        
        static var population = 0
        
        class func populationCount ()
        {
            println("The total number of humans is: \(population)")
            
            
        }
        
   
        init()
        {
            Human.population++;
        }
        
        var name = ""
        
        
        
        var pet:Pet = Pet(name: "", canMakeNoise: true)
        
        
        
        func makePetMakeNoise ()
        {
            var howOften  = Int(arc4random_uniform(UInt32(10)))
            for var x = 0; x < howOften; x++
            {
                pet.makeNoise()
                
            }
        }
        
        
        func feedPet()
        {
            
            pet.eat()
            
        }
        
        
    }
    
    class Cat : Pet {
        
        
      
        
        
   
        override var noise: String
        {
                return  "Meow"
        }
        

        
        override func eat() {
            
            super.eat()
            println(" I'm still hungry, meow")
            
        }
        
    }
    
    
    class Dog : Pet {
    
        
        override var noise: String
            {
                return "Bark"
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var petOne = Cat(name: "Chareles", canMakeNoise: true)
        
    
        
        
        
        var petTwo = Cat(name: "Sotiris", canMakeNoise: false)
        
        
        
        
        var petThree = Dog (name: "Batman", canMakeNoise: true)
        
       
       
        
        var hoooman = Human()
        
        hoooman.name = "Julian"
        hoooman.pet = petOne
     
        
        var hooman2 = Human()
        
        hooman2.name = "Jola"
        hooman2.pet = petTwo
       
        
        
        var hooman3 = Human()
        
        hooman3.name = "Ela"
        hooman3.pet = petThree
        
        
        var creatures : [Human] = [hoooman, hooman2, hooman3]
       
        
        for (index, humanAtIndex) in enumerate(creatures)
        {
            
            humanAtIndex.makePetMakeNoise()
            
            humanAtIndex.feedPet()
        }
        
        
        var population = Human.population
        Human.populationCount()
        
        
        popLabel.text = "The total number of humans is: \(population)"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
