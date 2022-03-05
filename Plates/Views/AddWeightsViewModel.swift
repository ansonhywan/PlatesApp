//
//  AddWeightsViewModel.swift
//  Plates
//
//  Created by Anson Wan on 2022-03-03.
//

import Foundation

class AddWeightsViewModel: ObservableObject{
    @Published var weightRepsList: [WeightReps]
    
    init() {
        self.weightRepsList = []
    }
    
    func addNewWeightReps() {
        print("In addNewWeightReps()")
        weightRepsList.append(WeightReps(weight: 0, reps: 0))
    }
    
    func updateMyMovement() {
        print("In updateMyMovement()")
    }
    
}
