//
//  AddWeightsView.swift
//  Plates
//
//  Created by Anson Wan on 2022-03-03.
//

import SwiftUI

struct AddWeightsView: View {
    @StateObject var viewModel: AddWeightsViewModel
    @State private var movementName = ""
    @State private var weight = ""
    @State private var reps = ""
    @State private var repsInReserve = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Movement")) {
                    TextField("Movement Name", text: $movementName)
                }
                Section (header: Text("Weights")) {
                    ForEach (viewModel.weightRepsList, id: \.id) { weightReps in
                        HStack {
                            TextField("Weight (lbs)", text: $weight)
                                .keyboardType(.numberPad)
                            TextField("Reps", text: $reps)
                                .keyboardType(.numberPad)
                            TextField("RIR", text: $repsInReserve)
                                .keyboardType(.numberPad)
                        }
                    }
                    Button("Add Weight") {
                        viewModel.addNewWeightReps()
                    }
                    
                }
                
            }
            .navigationTitle("New Weight")
        }
    }
    
    
    
    
}




struct AddWeightsView_Previews: PreviewProvider {
    static var previews: some View {
        AddWeightsView(viewModel: AddWeightsViewModel())
    }
}
