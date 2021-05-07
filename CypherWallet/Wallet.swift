//
//  Wallet.swift
//  CypherWallet
//
//  Created by stephan rollins on 4/27/21.
//

import Foundation

struct Wallet: Identifiable {
    var id: String
    let address: String
    let data: Data
    let name: String
    let isHD: Bool
}

struct HDKey {
    let name: String?
    let address: String
}

var wallets = [
    Wallet(id: "1234", address: "1234", data: Data(), name: "1234", isHD: false),
    Wallet(id: "5678", address: "5678", data: Data(), name: "5678", isHD: false),
    Wallet(id: "9012", address: "9012", data: Data(), name: "9012", isHD: false)
]
