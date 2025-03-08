//
//  ContentView.swift
//  QuickWash
//
//  Created by Michel Deziderio on 03/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showConfirmation = false
    @State private var selectedTransaction: DailyTransction? = nil
    
    var body: some View {
        
        ZStack{
            
//          HomePage()
            CreateTransactionPage()
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
