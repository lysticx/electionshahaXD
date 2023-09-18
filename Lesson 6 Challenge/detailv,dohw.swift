//
//  detailv,dohw.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 19/8/23.
//

import SwiftUI

struct detailv_dohw: View {
    var body: some View {
        
        NavigationStack {
            List { Section {
                Text ("be responsible for once") }
                
                
                Section {
                    Text ("To be done by :  21 Aug 2023, 9:43am")
                } }
            
            .navigationTitle("Details")
            
        }
    }
}
    
    struct detailv_dohw_Previews: PreviewProvider {
        static var previews: some View {
            detailv_dohw()
        }
    }
