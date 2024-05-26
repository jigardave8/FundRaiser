//
//  SearchView.swift
//  FundRaiser
//
//  Created by Jigar on 26/05/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            VStack {
                TextField("Find a fundraiser or charity", text: .constant(""))
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                ScrollView {
                    VStack(spacing: 20) {
                        TrendingFundraiserRow(title: "Help the people of Ukraine", raised: 12000000)
                        TrendingFundraiserRow(title: "Support LGBTQ+ rights", raised: 39000)
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Search")
        }
    }
}

struct TrendingFundraiserRow: View {
    let title: String
    let raised: Double

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text("$\(Int(raised)) raised")
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}
