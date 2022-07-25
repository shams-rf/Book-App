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
    @State var starIcon = "star"
    @State var isFavourite = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                NavigationLink (destination: {
                    
                    BookReadView(book: book)
                }, label: {
                    
                    VStack {
                        
                        Text("Read Now!")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Image("cover\(book.id)")
                            .resizable()
                            .scaledToFit()
                    }
                    .padding()
                })
                
                Text("Mark for later!")
                    .font(.headline)
                
                Toggle(isOn: $isFavourite, label: {
                    
                    Image(systemName: "star")
                })
                .toggleStyle(.button)
                .foregroundColor(.yellow)
                
                Text("Rate \(book.title)")
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
            .padding()
            .navigationTitle(book.title)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = BookModel()
        
        BookDetailView(book: model.books[0])
    }
}
