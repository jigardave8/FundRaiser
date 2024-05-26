//
//  FundraisersView.swift
//  FundRaiser
//
//  Created by Jigar on 26/05/24.
//

import SwiftUI

struct FundraisersView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    FundraiserRow(title: "Help us build a school in the Philippines", raised: 3000, goal: 5000, daysLeft: 1)
                    FundraiserRow(title: "Covid-19 Relief for India", raised: 80000, goal: 100000, daysLeft: 5)
                    FundraiserRow(title: "Help the homeless in San Francisco", raised: 54000, goal: 60000, daysLeft: 2)
                    FundraiserRow(title: "Support local restaurants", raised: 34000, goal: 40000, daysLeft: 7)
                }
                .padding()
            }
            .navigationBarTitle("Fundraisers")
        }
    }
}

struct FundraiserRow: View {
    let title: String
    let raised: Double
    let goal: Double
    let daysLeft: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text("$\(Int(raised)) raised out of $\(Int(goal))")
            ProgressBar(value: raised/goal)
            Text("\(daysLeft) days left")
            HStack {
                Button(action: {
                    // Action for Donate Now
                }) {
                    Text("Donate Now")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Button(action: {
                    // Action for Share
                }) {
                    Text("Share")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

struct ProgressBar: View {
    var value: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                Rectangle()
                    .frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .animation(.linear)
            }
            .cornerRadius(45.0)
        }
    }
}
