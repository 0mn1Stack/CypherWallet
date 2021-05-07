//
//  TokenView.swift
//  CypherWallet
//
//  Created by stephan rollins on 4/27/21.
//

import SwiftUI

struct TokenView: View {
    
    @Binding var token: ERC20Token
    @Binding var wallet: Wallet
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//struct TokenView_Previews: PreviewProvider {
//    static var previews: some View {
//        TokenView()
//    }
//}
