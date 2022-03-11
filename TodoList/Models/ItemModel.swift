//
//  ItemModel.swift
//  TodoList
//
//  Created by Bruno Gabriel on 06/02/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel.init(id: id, title: title, isCompleted: !isCompleted)
    }
}
