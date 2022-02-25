//
//  MovementDetailView.swift
//  Plates
//
//  Created by Anson Wan on 2022-02-24.
//

import SwiftUI

struct MovementDetailView: View {
    var movement: Movement
    var body: some View {
        ScrollView {
            VStack {
                Text(movement.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding(.top, 50)
                    .padding(.bottom, 10)
                HStack {
                    Label(movement.force ?? "None", systemImage: "figure.walk")
                    Label(movement.level, systemImage: "person.fill")
                }
                HStack{
                    Label(movement.mechanic ?? "None", systemImage: "gearshape.2.fill")
                    Label(movement.equipment ?? "None", systemImage: "wrench.and.screwdriver.fill")
                }
                
                
                
                Section(header: Text("Instructions")
                            .font(.title)
                            .bold()
                            .padding()) {
                    ForEach(movement.instructions, id: \.self) { step in
                        VStack(alignment: .leading){
                            Text(step)
                            Divider()
                        }
                        
                    }.padding(.horizontal)
                }
            
            
                
                Section(header: Text("Primary Muscles")) {
                        ForEach(movement.primaryMuscles, id: \.self) { muscle in
                            VStack(alignment: .leading){
                                Text(muscle)
                                Divider()
                            }
                        }.padding(.horizontal)
                }
            
            
                Section(header: Text("Secondary Muscles")) {
                        ForEach(movement.secondaryMuscles, id: \.self) { muscle in
                            VStack(alignment: .leading){
                                Text(muscle)
                                Divider()
                            }
                        }.padding(.horizontal)
                }
                
                
            }
        }
    }
}

struct MovementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovementDetailView(movement: MovementList().movementList.first!)
    }
}
