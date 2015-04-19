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
        
        var name = ""
        var noise : String
            {
                return ""
        }
        var canMakeNoise = true
        
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
        
        
        var name = ""
        
        
        func makePetMakeNoise (animal : Pet)
        {
            var howOften  = Int(arc4random_uniform(UInt32(10)))
            for var x = 0; x < howOften; x++
            {
                animal.makeNoise()
                
            }
        }
        
        
        func feedPet (animal : Pet)
        {
            
            animal.eat()
            
        }
        
        
    }
    
    class Cat : Pet {
        
        override var noise: String
            {
                return "Meow"
        }
        
        override func eat() {
            
            println(" \(name) is eating")
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
        
        var petOne = Cat()
        
        
        petOne.name = "Charles"
        petOne.canMakeNoise = true
        //        petOne.eat()
        //        petOne.makeNoise()
        
        
        var petTwo = Cat()
        
        petTwo.name = "Sotiris"
        petTwo.canMakeNoise = false
        //        petTwo.eat()
        //        petTwo.makeNoise()
        
        var petThree = Dog ()
        
        petThree.name = "Batman"
        petThree.canMakeNoise = true
        //        petThree.eat()
        //        petThree.makeNoise()
        
        var hoooman = Human()
        
        hoooman.name = "Julian"
        //        hoooman.makePetMakeNoise(petOne)
        //        hoooman.feedPet(petOne)
        
        
        var hooman2 = Human()
        
        hooman2.name = "Jola"
        //        hooman2.makePetMakeNoise(petThree)
        //        hooman2.feedPet(petThree)
        
        var hooman3 = Human()
        
        hooman3.name = "Ela"
        //        hooman3.makePetMakeNoise(petTwo)
        //        hooman3.feedPet(petTwo)
        
        
        
        var population : [Human] = [hoooman, hooman2, hooman3]
        var pets : [Pet] = [petOne, petTwo, petThree]
        
        for (index, humanAtIndex) in enumerate(population)
        {
            
            humanAtIndex.makePetMakeNoise(pets[index])
            
            humanAtIndex.feedPet(pets[index])
        }
        
        
        println("The total number of humans is: \(population.count)")
        
        popLabel.text = "The total number of humans is: \(population.count)"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
