//
//  Book.swift
//  Book-App
//
//  Created by Shamsuddin Refaei on 22/07/2022.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
}
