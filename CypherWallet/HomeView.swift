//
//  HomeView.swift
//  CypherWallet
//
//  Created by stephan rollins on 4/27/21.
//

import SwiftUI
import web3swift


struct HomeView: View {
    var body: some View {
        VStack{
            
            ScrollView{
                LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content: {
                    
                    
                    Section(header: HeaderView().edgesIgnoringSafeArea(.top)){
                        
                        VStack{
                            ForEach(wallets){ wallet in
                                

                                TokenCardView(wallet: wallet).onTapGesture {
                                    print("test")
                                }
                                
                                //Text(wallet.address)
                                
                            }
                        }.padding(.horizontal)
                    }
                    
                })
            }.overlay(
                Color.blue.frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top).ignoresSafeArea(.all, edges: .top), alignment: .top
            )
            
        }.onAppear{
            let password = "web3swift" // We recommend here and everywhere to use the password set by the user.
            let keystore = try! EthereumKeystoreV3(password: password)!
            let name = "New Wallet"
            let keyData = try! JSONEncoder().encode(keystore.keystoreParams)
            let address = keystore.addresses!.first!.address
            let wallet = Wallet(id: address, address: address, data: keyData, name: name, isHD: false)
            print("account: ", wallet.address, " count: \(String(describing: keystore.addresses))")
            
//            let data = wallet.data
//            let keystoreManager: KeystoreManager
//            if wallet.isHD {
//                let keystore = BIP32Keystore(data)!
//                keystoreManager = KeystoreManager([keystore])
//            } else {
//                let keystore = EthereumKeystoreV3(data)!
//                keystoreManager = KeystoreManager([keystore])
//            }
//
//            let ethereumAddress = EthereumAddress(wallet.address)
//            let pkData = try! keystoreManager.UNSAFE_getPrivateKeyData(password: password, account: ethereumAddress!).toHexString()
//            print("private key: ", pkData)
            
//            let password2 = "web3swift"
//            let key = "" // Some private key
//            let formattedKey = key.trimmingCharacters(in: .whitespacesAndNewlines)
//            let dataKey2 = Data.fromHex(formattedKey)!
//            let keystore2 = try! EthereumKeystoreV3(privateKey: dataKey2, password: password2)!
//            let name2 = "New Wallet"
//            let keyData2 = try! JSONEncoder().encode(keystore2.keystoreParams)
//            let address2 = keystore.addresses!.first!.address
//            let wallet2 = Wallet(id: address, address: address2, data: keyData2, name: name2, isHD: false)
//            print("existing private key: ", wallet2.address)
            
//            var newWallet = web3.eth.accounts.create()
//            // access the public address
//            newWallet.address
//            //private key:
//            newWallet.privateKey
            
            // 
            //
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
