//
//  HomePage.swift
//  QuickWash
//
//  Created by Michel Deziderio on 06/03/25.
//

import SwiftUI

struct HomePage: View {
    @State private var showConfirmation = false
    @State private var selectedTransaction: DailyTransction? = nil
    
    var body: some View {
        
        ZStack{
            
            ScrollView {
                
                HStack{
                    Text("SERVIÇOS")
                    Spacer()
                    Text("TOTAL:")
                    Text(totalAmount(), format: .currency(code: "BRL"))
                }
                .padding(.horizontal, 14)
                
                ForEach(DailyTransactions) { transaction in
                    TransactionsView(transaction: transaction)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
                        .onTapGesture {
                            showConfirmation = true
                            selectedTransaction = transaction
                        }
                        .opacity(transaction == selectedTransaction ? 0.3 : 1)
                }
                
            }
            .coordinateSpace(name: "scroll")
            .safeAreaInset(edge: .top, content: {
                Color.clear.frame(height: 30)
            })
            
        }
        
        .confirmationDialog(
            selectedTransaction?.finished ?? false ? "Deseja realmente voltar para fila?" : "Deseja realmente finalizar?",
            isPresented: $showConfirmation,
            titleVisibility: .visible
        ) {
            Button("Confirmar", role: .destructive) {
                print("Ação confirmada!")
                selectedTransaction = nil
            }

            Button("Cancelar", role: .cancel) {
                selectedTransaction = nil
            }
        }
    }
    
    func totalAmount() -> Double {
        return DailyTransactions.map { $0.valueTotalService }.reduce(0, +)
    }
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
