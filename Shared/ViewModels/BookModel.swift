//
//  BookModel.swift
//  Book-App
//
//  Created by Shamsuddin Refaei on 22/07/2022.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        
        //create instance of DataService and get the data
    }
}
