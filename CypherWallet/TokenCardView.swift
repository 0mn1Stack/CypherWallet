//
//  TokenCardView.swift
//  CypherWallet
//
//  Created by stephan rollins on 4/27/21.
//

import SwiftUI

struct TokenCardView: View {
    @State var wallet: Wallet
    var body: some View {
        HStack{
            HStack{
                //image
                
                Image(systemName: "circle.fill")
                VStack(alignment: .leading, spacing: nil){
                    Text("token name")
                    Text("$X.XX").font(.title3)
                }

            }.padding()
            Spacer()
        }.background(Color.white).cornerRadius(9).shadow(radius: 9)
    }
}

//struct TokenCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        TokenCardView()
//    }
//}
// 
//
