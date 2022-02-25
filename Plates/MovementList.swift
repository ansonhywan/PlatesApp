//
//  ExerciseList.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import Foundation

class MovementList: ObservableObject {
    let movementList: [Movement]
    
    init() {
        let url = Bundle.main.url(forResource: "exercises", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        movementList = try! JSONDecoder().decode([Movement].self, from: data)
    }
}
