//
//  BookReadView.swift
//  Book-App
//
//  Created by Shamsuddin Refaei on 22/07/2022.
//

import SwiftUI

struct BookReadView: View {
    
    var book:Book
    
    var body: some View {
        TabView {
            
            ForEach (0..<book.content.count, id:\.self) { index in
                
                VStack {
                    
                    Text(book.content[index])
                        .padding()
                    
                    Text(String(index+1))
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct BookReadView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookModel()
        
        BookReadView(book: model.books[0])
    }
}
