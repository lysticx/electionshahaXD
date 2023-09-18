//
//  add point for todohaha.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 19/8/23.
//

import SwiftUI

struct add_point_for_todohaha: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var notes: [Note]
    @State var textInTextField = ""
    @State var detailwrite = ""
    @State var agege = 1.0


    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField( "Title", text: $textInTextField)
                    TextEditor(text: $detailwrite) } .bold()
                
                Section(header : Text("Age")) {
                    Slider (value: $agege, in: 1.0...200.0, step: 1)
                    let agereal = Text ("Age -->    \(agege)")
                    agereal
                }  .navigationBarTitle("Add note")
                
                
                Button ("create") {let newNoteee = Note (title:textInTextField, content: detailwrite, agereal: agege, votes: 0)
                    notes.append(newNoteee)
                    
                    presentationMode.wrappedValue.dismiss()}
            }
        }
        
    }
}

struct Note: Identifiable {
    let id = UUID()
    var title: String
    var content: String
    var agereal : Double
    var votes : Double
}

struct add_point_for_todohaha_Previews: PreviewProvider {
    static var previews: some View {
        add_point_for_todohaha(notes: .constant([]))
    }
}
