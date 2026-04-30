//
//  ContentView.swift
//  Pick-a-pal
//
//  Created by jeegarden on 3/28/26.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = []
    //@State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName = false
    
    var body: some View {
        VStack {
            VStack(spacing: 8) {
                            Image(systemName: "person.3.sequence.fill")
                            .foregroundStyle(Color.main)
                            .symbolRenderingMode(.hierarchical)
                            
                            Text("Pick-a-Pal")
                        }
                        .font(.title)
                        .bold()
            Text(pickedName.isEmpty ? " " : pickedName)
                .font(.title2)
                .bold()
                .foregroundStyle(.tint)
            
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            TextField("Add Name", text: $nameToAdd)
                .autocorrectionDisabled()
                .onSubmit {
                    if !nameToAdd.isEmpty {
                        names.append(nameToAdd)
                        nameToAdd = ""
                    }
                }
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            Divider()
            
            Button{
                if let randomName = names.randomElement() {
                    pickedName = randomName


                    if shouldRemovePickedName {
                        names.removeAll { name in
                            return (name == randomName)
                        }
                    }
                } else {
                    pickedName = ""
                }
            } label: {
                Text("Pick Random Name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.main)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
