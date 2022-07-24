//
//  ContentView.swift
//  Shared
//
//  Created by Shamsuddin Refaei on 22/07/2022.
//

import SwiftUI

struct BookMainView: View {
    
    @EnvironmentObject var model:BookModel
    
    var body: some View {
        
        GeometryReader { geo in
            
            NavigationView {
                
                ScrollView {
                    
                    LazyVStack {
                        
                        ForEach (model.books) { b in
                            
                            NavigationLink(destination: {
                                
                                BookDetailView(book: b)
                            }, label: {
                                
                                ZStack {
                                    
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                    
                                    VStack (alignment: .leading, spacing: 10) {
                                        
                                        Text(b.title)
                                            .foregroundColor(.black)
                                            .font(.title)
                                            .bold()
                                        
                                        Text(b.author)
                                            .font(.callout)
                                            .foregroundColor(.black)
                                            .italic()
                                        
                                        Image("cover\(b.id)")
                                            .resizable()
                                            .scaledToFit()
                                    }
                                    .padding()
                                }
                                .frame(width: geo.size.width-40, height: geo.size.height-200, alignment: .center)
                                .padding()
                                .shadow(radius: 10)
                            })
                        }
                    }
                }
                .navigationTitle("My Library")
            }
        }
    }
}

struct BookMainView_Previews: PreviewProvider {
    static var previews: some View {
        BookMainView()
            .environmentObject(BookModel())
    }
}
