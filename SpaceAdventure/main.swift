/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation



// TODO: Reduce repetitive code
let planetData = ["Mercury": "A very hot planet, closest to the sun",
"Venus":"Second planet from the sun. Poisonous atmosphere.",
"Earth": "Third planet from the sun. Home sweet home.",
"Mars":"The red planet. James B was chilling there.",
"Jupiter": "The largest planet in this solar system. A gas giant!",
"Saturn": "The planet with rings.",
"Uranus": "How many miles away is Uranus? O_o",
"Neptune": "A very cold planet, furthest from the sun."]

let systemName = "Solar System"

let planets = planetData.map {name, description in
    Planet(name: name, description:description)
}
let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let adventure = SpaceAdventure(planetarySystem: solarSystem)
adventure.start()



