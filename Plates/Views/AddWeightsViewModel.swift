//
//  AddWeightsViewModel.swift
//  Plates
//
//  Created by Anson Wan on 2022-03-03.
//

import Foundation

class AddWeightsViewModel: ObservableObject{
    @Published var weightRepsRIRList: [WeightRepsRIR]
    
    init() {
        self.weightRepsRIRList = []
    }
    
    func addSet() {
        print("In addSet()")
        weightRepsRIRList.append(WeightRepsRIR())
    }
    
    func updateWeightRepsRIRList(WeightRepsRIRList: [WeightRepsRIR]) {
        print("In updateWeightRepsRIRList()")
        //weightRepsRIRList.append(WeightRepsRIR(weight: WeightRepsRIRList[currentSet].weight, reps: WeightRepsRIRList[currentSet].reps, repsInReserve: WeightRepsRIRList[currentSet].repsInReserve))
        
    }
    
    func updateMyMovement(Movement: String) {
        print("In updateMyMovement()")
        
    }
}
