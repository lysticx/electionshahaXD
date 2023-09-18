//
//  detailv,groceries.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 19/8/23.
//

import SwiftUI

struct detailv_groceries: View {
    var body: some View {
        
        NavigationStack {
            List { Section {
                Text ("im the only one not being productive thats why ahaha") }
                
                
                Section {
                    Text ("To be done by :  20 Aug 2023, 1:53pm")
                } }
            
            .navigationTitle("Details")
            
        }
    }
}
    
    struct detailv_groceries_Previews: PreviewProvider {
        static var previews: some View {
            detailv_groceries()
        }
    }
