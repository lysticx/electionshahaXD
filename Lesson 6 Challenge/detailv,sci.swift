//
//  detailv,sci.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 19/8/23.
//

import SwiftUI

struct detailv_sci: View {
    var body: some View {
        NavigationStack {
            List { Section {
                Text ("phys and bio wow i love science!!!") }
            Section {
                Text ("To be done by :  10 Sep 2023, 2:00am (??)")
            } }
            
        .navigationTitle("Details")
            
        }
    }
    
    
    struct detailv_groceries_Previews: PreviewProvider {
        static var previews: some View {
            detailv_groceries()
        }
    }
}
