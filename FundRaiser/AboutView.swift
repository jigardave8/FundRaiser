//
//  AboutView.swift
//  FundRaiser
//
//  Created by Jigar on 26/05/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                Text("GoFundMe is the #1 and most trusted free fundraising platform.")
                    .font(.headline)
                Text("We are the world's largest online fundraising site, helping individuals, groups and non-profits raise money online quickly and easily.")
                
                NavigationLink(destination: Text("How GoFundMe Works")) {
                    Text("How GoFundMe Works")
                }
                NavigationLink(destination: Text("What is Crowdfunding?")) {
                    Text("What is Crowdfunding?")
                }
                NavigationLink(destination: Text("Team Fundraising")) {
                    Text("Team Fundraising")
                }
                NavigationLink(destination: Text("Pricing")) {
                    Text("Pricing")
                }
                NavigationLink(destination: Text("Resources")) {
                    Text("Resources")
                }
            }
            .padding()
            .navigationBarTitle("About")
        }
    }
}
