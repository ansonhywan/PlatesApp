//
//  Exercise.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import Foundation
import SwiftUI

struct Movement: Decodable, Hashable {
    let name: String
    let force: String?
    let level: String
    let mechanic: String?
    let equipment: String?
    let primaryMuscles: Array<String>
    let secondaryMuscles: Array<String>
    let instructions: Array<String>
    let category: String
}

struct MyMovement: Identifiable {
    let id = UUID()
    let name: String
    var weightReps: Array<WeightReps>
}

struct WeightReps: Identifiable {
    let id = UUID()
    let weight: Int
    let reps: Int
}

