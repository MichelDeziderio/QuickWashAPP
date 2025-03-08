//
//  cardUserView.swift
//  QuickWash
//
//  Created by Michel Deziderio on 08/03/25.
//

import SwiftUI

struct cardUserView: View {
    var User: UsersModel
    var body: some View {
        HStack{
            HStack{
                if let imageData = Data(base64Encoded: User.photo),
                   let uiImage = UIImage(data: imageData) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 125)
                        
                } else {
                    Text("X")
                        .foregroundColor(.red)
                }
            }
            
            Spacer()
            
            VStack{
                
                HStack{
                    Text(User.name)
                        .foregroundColor(Color("cardTextColor"))
                        .padding(.vertical, 5)
                }
                
                
                HStack{
                    Text(User.plate)
                        .foregroundColor(Color("cardTextColor"))
                        .padding(.vertical, 5)
                }
                
            }
            
            Spacer()
            
            
            VStack{
                
                HStack{
                    Text(User.carMaker)
                        .foregroundColor(Color("cardTextColor"))
                        .padding(.vertical, 5)
                }
                
                
                HStack{
                    Text(User.vehicleModel)
                        .foregroundColor(Color("cardTextColor"))
                        .padding(.vertical, 5)
                }
                
            }
        }
        .padding(.horizontal, 10)
        .background(Color.white)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 0)
    }
}

struct cardUserView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            cardUserView(User: previewUser)
            cardUserView(User: previewUser)
                .preferredColorScheme(.dark)

        }
    }
}
