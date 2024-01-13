//
//  ContentView.swift
//  H4X0R News
//
//  Created by Akshay Ashok on 12/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts){ post in
                Text(post.title)
            }.navigationTitle("H4X0R NEWS")
        
        }
      
    
    }
}

struct Post: Identifiable{
    let id : String
    let title: String
}


let posts = [
Post(id: "1", title: "Hello"),
Post(id: "2", title: "Bonjour"),
Post(id: "3", title: "Hola")
]


#Preview {
    ContentView()
}
