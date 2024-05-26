//
//  MyFundraisersView.swift
//  FundRaiser
//
//  Created by Jigar on 26/05/24.
//

import SwiftUI

struct MyFundraisersView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: CreateFundraiserView()) {
                    Text("Create a Fundraiser")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()

                ScrollView {
                    VStack(spacing: 20) {
                        FundraiserRow(title: "Helping Hands", raised: 5000, goal: 10000, daysLeft: 10)
                        FundraiserRow(title: "Save the Pups", raised: 1500, goal: 2000, daysLeft: 5)
                    }
                    .padding()
                }
            }
            .navigationBarTitle("My Fundraisers")
        }
    }
}

struct CreateFundraiserView: View {
    var body: some View {
        Text("Create Fundraiser Screen")
            .navigationBarTitle("Create a Fundraiser")
    }
}
