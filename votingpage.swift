//
//  votingpage.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 29/8/23.
//

import SwiftUI

struct votingpage: View {
    
    @State var ikea = 0
    @State var goofy = 0
    @State var sara = 0
    @State var jean = 0
    
    
    
    
    var body: some View {
        NavigationStack {
        VStack {
            List {
                Section {
                 
            Stepper ("Ikea = \(ikea) votes", value: $ikea, in: 0...100 )
            Stepper ("Goofy = \(goofy) votes", value: $goofy, in: 0...100)
            Stepper ("Sara = \(sara) votes", value: $sara, in: 0...100)
            Stepper ("Jean = \(jean) votes", value: $jean, in: 0...100)
                    
                    
                    
                    
          }}
        } .navigationTitle("Voting")
                .bold()
        }
        
        
    }
}
struct votingpage_Previews: PreviewProvider {
    static var previews: some View {
        votingpage()
    }
}
