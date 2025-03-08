//
//  CreateTransactionPage.swift
//  QuickWash
//
//  Created by Michel Deziderio on 08/03/25.
//

import SwiftUI

struct CreateTransactionPage: View {
    @State private var searchUser: String = ""
    @State private var isLoading: Bool = false;
    @State private var searchListUsers: [UsersModel] = []
//    var Users: UsersModel
    
    var body: some View {
        
        ZStack {
            
            ScrollView {
                
                VStack {
                    
                    TextField("Pesquisar pelo nome", text: $searchUser)
                        .padding(15)
                        .font(.system(size: 20))
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .onChange(of: searchUser) { newValue in
                            
                            if newValue.count > 3 {
                                isLoading = true;
                                searchAction(newValue)
                            } else if newValue.count < 3 {
                                isLoading = false;
                                searchListUsers = []
                            }
                        }
                    
                    if isLoading {
                        Text("Carregando....")
                    }
                }
                
                Spacer()
                
                VStack {
                    if(searchListUsers != [] || !searchListUsers.isEmpty) {
                        
                        ForEach(searchListUsers) { user in
    
                            cardUserView(User: user)
                                .padding(.horizontal, 14)
                            
                            
                        }
                    }
                    
                    Text("Adicionar")
                        .padding(.top, 5)
                }
            }
            .padding(.bottom, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
       
    }
    
    func searchAction(_ query: String) {

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            isLoading = false;
            searchListUsers = Users.filter { $0.name.localizedCaseInsensitiveContains(query) }
        }
    }
}

struct CreateTransactionPage_Previews: PreviewProvider {
    static var previews: some View {
        CreateTransactionPage()
    }
}
