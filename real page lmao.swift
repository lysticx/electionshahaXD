//
//  real page lmao.swift
//  Lesson 6 Challenge
//
//  Created by Lili Y on 29/8/23.
//

import SwiftUI

struct real_page_lmao: View {
    var body: some View {
        TabView{
            ContentView().tabItem{ Image(systemName: "person.fill")
                Text("Candidates")
            } .bold()
            
            votingpage().tabItem { VStack { Image(systemName: "list.clipboard.fill"); Text ("Vote") } }
        }
        
    }
}

struct real_page_lmao_Previews: PreviewProvider {
    static var previews: some View {
        real_page_lmao()
    }
}
