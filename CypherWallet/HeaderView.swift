//
//  HeaderView.swift
//  CypherWallet
//
//  Created by stephan rollins on 4/27/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack(spacing: 8){
            Text("Cypher Wallet").font(.title).fontWeight(.bold)
            //Spacer(minLength: 0)
            Text("$X.XX").font(.title2)
            
            HStack{
                Button(action: {
                    
                }){
                    Text("Send")
                }
                
                Button(action: {
                    
                }){
                    Text("Recieve")
                }
                
                
            }.padding(.bottom)
            .frame(maxWidth: .infinity)
        }.padding(.horizontal).frame(height: 100).background(Color.blue.edgesIgnoringSafeArea(.top))
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
