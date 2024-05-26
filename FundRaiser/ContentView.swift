//
//  ContentView.swift
//  FundRaiser
//
//  Created by Jigar on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FundraisersView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            MyFundraisersView()
                .tabItem {
                    Image(systemName: "person")
                    Text("My Fundraisers")
                }
            AboutView()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("About")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
