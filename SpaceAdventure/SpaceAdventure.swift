//
//  SpaceAdventure.swift
//  SpaceAdventure
//
//  Created by james on 2/10/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    init(planetarySystem: PlanetarySystem){
        self.planetarySystem = planetarySystem
    }
    
    func start() {
        
        displayIntroduction()
        greetAdventure()
        if(!planetarySystem.planets.isEmpty){
            print("Let's go on an adventure.")
            determineDestination()
        }
        
    }
    private func displayIntroduction() {
        
        print("Welcome to the \(planetarySystem.name)")
        print("There are \(planetarySystem.planets.count) planets to explore!")
    }
    private func responseToPrompt(prompt: String) -> String {
        print(prompt)
        return getln()
    }
    private func greetAdventure() {
        let name = responseToPrompt(prompt: "What is your name?")
        print("Nice to meet you, \(name). My name is Billy, I'm a good friend of Mandy.")
    }
    private func determineDestination() {
       
        var decision = "" // start with and empty string
        
        while !(decision == "Y" || decision == "N"){
            decision = responseToPrompt(prompt: "Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                if let planet = planetarySystem.randomPlanet {
                    visit(planetName: planet.name)
                } else {
                    print("Sorry, but there are no planets to visit in this solar system.")
                }
            } else if decision == "N"{
                let planetName = responseToPrompt(prompt: "Okay, name the planet you would like to visit.")
                visit(planetName: planetName)
            }else{
                print("Sorry, I didn't get that")
            }
        }
    }
    private func visit(planetName: String) {
        print("Traveling to \(planetName)...")
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Arrived at \(planet.name). \(planet.description)")
            }else {
                print("Sorry I didn't get that.")
            }
        }
    }
}




