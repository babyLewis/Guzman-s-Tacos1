//
//  VMExpenseScreen.swift
//  Guzman's Tacos
//
//  Created by Luis Guzman on 3/15/24.
//

import SwiftUI

struct VMExpenseScreen: View {
    var totalExpense: Double = 800.0
    var foodSales: Double = 500.0
    var customerSales: Double = 700.0
    var corporateSales: Double = 800.0
    var format1: String{
        return String(format: "%.2f", foodSales)
    }
    var format2: String{
        return String(format: "%.2f", customerSales)
    }
    var format3: String{
        return String(format: "%.2f", corporateSales)
    }
    var body: some View {
        let totalExpense2 = totalExpense + foodSales + customerSales + corporateSales
        var formatExpense: String{
            return String(format: "%2.f", totalExpense2)
        }
        List{
            VStack{
                Text("Total Income: \(formatExpense)")
                Text("Food Sales: \(format1)")
                Text("Customer Sales: \(format2)")
                Text("Corporate Sales: \(format3)")
            }
        }
    }
}

struct VMExpenseScreen_Previews: PreviewProvider {
    static var previews: some View {
        VMExpenseScreen()
    }
}
