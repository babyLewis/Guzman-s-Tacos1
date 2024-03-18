//
//  UtilitiesScreen.swift
//  Guzman's Tacos
//
//  Created by Luis Guzman on 3/17/24.
//

import SwiftUI
struct UtilitiesScreen: View {
    var totalIncome: Double = 2000.0
    var totalExpense: Double = 800.0
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://images.app.goo.gl/j1bw6EnE3H1mTSGv5")){
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            AsyncImage(url: URL(string: "https://images.app.goo.gl/G27ihBVenj39uerL8")){
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            Image("tacos3")
                .resizable()
                .frame(width: 100, height: 100)
        }
        VStack{
            Text("Profit/Loss Data")
                .font(.title)
            Text(profitLossNumber)
                .foregroundColor(profitLossColor)
                .padding()
            NavigationLink(destination: VMIncomeScreen()){
                Text("View and Modify Income")
            }
            NavigationLink(destination: VMExpenseScreen()){
                Text("View and Modify Expense")
            }
        }
    }
    var profitLossNumber: String{
        let percentage: Double = Double(totalExpense) / Double(totalIncome) * 100
        if hasProfit{
            return "Profitable: \(percentage)"
        }
        else if breakingEven{
            return "Breaking Even: \(percentage)"
        }
        else {
            return "Loss: \(percentage)"
        }
    }
    var profitLossColor: Color{
        if hasProfit{
            return .green
        }
        else if breakingEven{
            return .blue
        }
        else{
            return .red
        }
    }
    var hasProfit: Bool{
        return totalIncome > totalExpense
    }
    var breakingEven: Bool{
        return totalIncome == totalExpense
    }
}

struct UtilitiesScreen_Previews: PreviewProvider {
    static var previews: some View {
        UtilitiesScreen()
    }
}
