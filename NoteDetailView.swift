//
//  NoteDetailView.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 27/8/23.
//

import SwiftUI

struct NoteDetailView: View {
    @Binding var notes : Note
    
    
    var body: some View {
        NavigationView {
        VStack {
            Form {
                Section{
                    TextField ("please", text: $notes.title).bold()
                    TextEditor(text: $notes.content)
           
            }; Section{ Text("age \(notes.agereal)")
        }.navigationBarTitle ("Details")
        }
        }
        
    }
    }
}





struct NoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let notes : [Note] = [Note(title: "Sample Note", content: "This is a sample note content.", agereal: 1, votes:0)]
        return NoteDetailView(notes: .constant(notes[0]))
    }
}
