//
//  ContentView.swift
//  H4X0R News
//
//  Created by Akshay Ashok on 12/01/24.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                }
               
            }.navigationTitle("H4X0R NEWS")
        
        }
        .onAppear(perform: {
            networkManager.fetchData()
        })
    
    }
}


#Preview {
    ContentView()
}
