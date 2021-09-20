//
//  TabModel.swift
//  TabApp
//
//  Created by Justin Su on 21/9/21.
//

import Foundation

class TabModel:ObservableObject {
    
    @Published var items = [Tabitem]()
    
    init() {
        for idx in 0...100 {
            let item = Tabitem()
            item.id = idx
            item.name = "This is tab 3!"
            
            items.append(item)
        }
    }
}
