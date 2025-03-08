//
//  TransactionsServices.swift
//  QuickWash
//
//  Created by Michel Deziderio on 03/03/25.
//

import SwiftUI

struct TransactionsView: View {
    var transaction: DailyTransction
    
    var body: some View {
        
        VStack {
            
            HStack{
            
                Text("Lavagem:")
                    .foregroundColor(transaction.finished ? Color.white :Color("cardTextColor"))
                
                Spacer()
           
                Text(types(type: transaction.serviceType))
                    .foregroundColor(transaction.finished ? Color.white :Color("cardTextColor"))
                    
            }
            Spacer()
                
            HStack(){
                
                Text("Valor:")
                    .foregroundColor(transaction.finished ? Color.white :Color("cardTextColor"))
                
                Spacer()
          
                Text(transaction.valueTotalService, format: .currency(code: "BRL"))
                    .foregroundColor(transaction.finished ? Color.white :Color("cardTextColor"))
          
            }
            
        }
        .frame(height: 50)
        .padding(.vertical, 18)
        .padding(.horizontal, 14)
        .background(
            Rectangle()
                .fill(transaction.finished ? Color("cardBackgroundColorFinished") : Color("cardBackgroundColor"))
                .mask(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                )
        )
        .cornerRadius(10)
        
    }
    
    func types(type: Int) -> String {
        var typeService = ""
        switch (type) {
            
        case 1:
            typeService = "Simples"
            
        case 2:
            typeService = "Com Cêra"
            
        default:
            typeService = "Com Cera e Polimento"
        }
        
        return typeService
    }
    
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView(transaction: previewDailyTransaction)
    }
}
