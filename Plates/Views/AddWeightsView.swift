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
    
    var body: some View {
        NavigationView {
            //VStack {
            Form {
                Section (header: Text("Movement")) {
                    TextField("Movement Name", text: $movementName)
                }
                Section (header: Text("Weights")) {
                    ForEach (viewModel.weightRepsRIRList.indices, id:\.self) { currentSet in
                        HStack {
                            TextField("Weight (lbs)", value: $viewModel.weightRepsRIRList[currentSet].weight, formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                            TextField("Reps", value: $viewModel.weightRepsRIRList[currentSet].reps, formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                            TextField("RIR", value: $viewModel.weightRepsRIRList[currentSet].repsInReserve, formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                        }
                    }
                    Button("Add Weight") {
                        viewModel.addSet()
                    }
                    
                    
                    
                }
                Section (footer: Button("Done") {
                    print(viewModel.weightRepsRIRList)
                }
                            .font(.system(.body))) {
                    EmptyView()
                }
                
            }
            
            //}
            .navigationTitle("New Weight")
        }
    }
    
    
    
    
}




struct AddWeightsView_Previews: PreviewProvider {
    static var previews: some View {
        AddWeightsView(viewModel: AddWeightsViewModel())
    }
}
