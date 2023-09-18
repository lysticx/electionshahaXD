//
//  ContentView.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 14/8/23.
//

import SwiftUI
struct ContentView: View {
    
    @State var sheetShown = false
    @State var notes : [Note] = [
        Note (title: "Ikea", content: "likes drawing, has 21k followers on instagram", agereal: 21, votes: 0),
        Note (title: "Goofy", content: "job is touching grass", agereal: 20, votes: 0),
        Note (title: "Sara", content: "a woman. wow women!", agereal: 15, votes: 0),
        Note (title: "Jean", content: "dont piss ur jeans", agereal: 22, votes: 0)
    ]
    
    var body: some View {
        
        NavigationView() {
            VStack {
                //ForEach(notes) { note in
                List{ ForEach(notes, id: \.title) { note in
                    NavigationLink(destination: NoteDetailView(notes: $notes[noteIndex(for: note)]))
                    {Text(note.title)}  }
                .onDelete { indexSet in
                    notes.remove(atOffsets: indexSet) } }
                
                
        
            
        }    .bold()
            .sheet(isPresented: $sheetShown) {add_point_for_todohaha(notes:$notes)}
                
            .navigationBarTitle("List of Candidates")
                    .toolbar { Button {sheetShown.toggle()} label : {Image(systemName:"plus") } }
                    .toolbar { ToolbarItem(placement: .navigationBarTrailing) {EditButton()} }
            }
        }
    func deleteNotes(at indices: IndexSet) {
           notes.remove(atOffsets: indices) }
    func noteIndex(for note: Note) -> Int {
            notes.firstIndex { $0.id == note.id } ?? 0 }
    
        
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
