//
//  TodoListApp.swift
//  TodoList
//
//  Created by Bruno Gabriel on 06/02/22.
//

import SwiftUI

/*
 
 MVVM Architecture

 Model - Data point
 View - UI
 ViewModel - Manages Models for View
 
*/

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
