//
//  collectionModel.swift
//  MultitechOS
//
//  Created by Felipe Domingos on 04/04/23.
//

import UIKit

struct Item {
    
    var name: String?
    var image: String
    
}

func loadItems(completion: @escaping ([Item]) -> Void) {
    let items = [
        Item(name: "Clientes",  image: "person.badge.plus"),
        Item(name: "Serviços",  image: "newspaper"),
        Item(name: "Criar OS",  image: "pencil.slash"),
        Item(name: "Ordens",    image: "folder"),
        Item(name: "Garantias", image: "lock.doc"),
        Item(name: "Finalizados", image: "text.viewfinder"),
        Item(name: "Configurações", image: "gear")
    ]
    completion(items)
}
