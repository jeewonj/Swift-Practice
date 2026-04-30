//
//  Practice.swift
//  Pick-a-pal
//
//  Created by jeegarden on 4/2/26.
//
import SwiftUI
struct Practice:View{
    @State private var names: [String]=[]
    @State private var nameToAdd = ""
    @State private var pickedName = ""
    @State private var shouldRemovePickedName=false
    
    var body: some View{
        VStack(spacing: 8){
            Image(systemName: "person.3.sequence.fill")
                .foregroundStyle(.main)
                .symbolRenderingMode(.hierarchical)
            Text("Pick-A-Pal")
        }
        .font(.title)
        .bold()
        .padding(.horizontal,)
            Text(pickedName.isEmpty ? "" : pickedName)
                .font(.title2)
                .fontWeight(.medium)
            
            List{
                ForEach(names, id:\.description){name in
                Text(name)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal, 16)
            
        
            TextField("Add names", text:$nameToAdd)
                .onSubmit {
                    if !nameToAdd.isEmpty{
                        names.append(nameToAdd)
                        nameToAdd=""
                    }
                }.padding(.horizontal, 16)
            Divider()
            
            Toggle("Remove when picked", isOn: $shouldRemovePickedName)
            .padding(.horizontal, 16)
            Button{
                if let randomName = names.randomElement(){
                    pickedName = randomName
                    
                    if shouldRemovePickedName{
                        names.removeAll {name in
                            return (name == randomName)
                        }
                    }
                    
                }else{
                    pickedName = ""
                    
                    
                }
            }label: {
                Text("Pick random name")
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.main)
        
    }
}
#Preview {
    Practice()
}
