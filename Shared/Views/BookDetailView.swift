//
//  BookDetailView.swift
//  Book-App
//
//  Created by Shamsuddin Refaei on 22/07/2022.
//

import SwiftUI

struct BookDetailView: View {
    
    @EnvironmentObject var model:BookModel
    
    var book:Book
    
    @State var rating = 1
    
    var body: some View {
        
        VStack {
            
            Text("Amazing Words")
                .bold()
                .font(.largeTitle)
                .padding()
            
            VStack (spacing: 30) {
                
                Text("Read Now!")
                    .font(.title2)
                
                Image("cover1")
                    .resizable()
                    .scaledToFit()
                
                Text("Mark for later!")
                    .font(.headline)
                
                Image(systemName: "star.fill")
                
                Text("Rate Amazing Words")
                    .font(.headline)
                
                Picker("", selection: $rating) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .frame(width: 300)
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookModel()
        
        BookDetailView(book: model.books[0])
    }
}
