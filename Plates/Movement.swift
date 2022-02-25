//
//  Exercise.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import Foundation
import SwiftUI

struct Movement: Decodable, Hashable{
    let name: String
    let force: String?
    let level: String
    let mechanic: String?
    let equipment: String?
    let primaryMuscles: Array<String>
    let secondaryMuscles: Array<String>
    let instructions: Array<String>
    let category: String
    
    /*
    static let example = Exercise(name: "3/4 Sit-Up", force: "pull", level: "beginner", mechanic: "compound", equipment: "body only", primaryMuscles: ["abdominals"], secondaryMuscles: [], instructions: [
        "Lie down on the floor and secure your feet. Your legs should be bent at the knees.",
        "Place your hands behind or to the side of your head. You will begin with your back on the ground. This will be your starting position.",
        "Flex your hips and spine to raise your torso toward your knees.",
        "At the top of the contraction your torso should be perpendicular to the ground. Reverse the motion, going only Â¾ of the way down.",
        "Repeat for the recommended amount of repetitions."
      ], category: "strength")
     */
}

/*
{
  "name": "3/4 Sit-Up",
  "force": "pull",
  "level": "beginner",
  "mechanic": "compound",
  "equipment": "body only",
  "primaryMuscles": [
    "abdominals"
  ],
  "secondaryMuscles": [],
  "instructions": [
    "Lie down on the floor and secure your feet. Your legs should be bent at the knees.",
    "Place your hands behind or to the side of your head. You will begin with your back on the ground. This will be your starting position.",
    "Flex your hips and spine to raise your torso toward your knees.",
    "At the top of the contraction your torso should be perpendicular to the ground. Reverse the motion, going only Â¾ of the way down.",
    "Repeat for the recommended amount of repetitions."
  ],
  "category": "strength"
*/
