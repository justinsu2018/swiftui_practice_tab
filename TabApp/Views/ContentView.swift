//
//  ContentView.swift
//  TabApp
//
//  Created by Justin Su on 20/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    @ObservedObject var model = TabModel()
    
    var body: some View {
        
        TabView(selection: $tabIndex)
        {
            Text("This is tab's tag is " + String(tabIndex) + ".")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise.fill")
                        Text("Tab 1")
                    }
                }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Take me to tab 3!")
            })
            .tabItem {
                VStack {
                    Image(systemName: "arrow.right")
                    Text("Tab 2")
                }
            }
            
            
            
            List(model.items) {
                r in
                Text(String(r.id) + r.name)
            }
            .tabItem {
                VStack {
                    Image(systemName: "hands.clap")
                    Text("Tab 3")
                }
            }
            
            
        }.frame(width: .infinity, height: .infinity )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
