//
//  ContentView.swift
//  Books
//
//  Created by Julian on 2/14/24.
//

import SwiftUI



struct ContentView: View {
    
    let book = bookData
    
    var body: some View {
        ScrollView(showsIndicators: false){
            
            VStack(spacing: 20){
                
                
                Image(book.image)                           //Image is grabed from assests
                    .resizable()
                    .frame(width: 200, height: 250)
                    .cornerRadius(20)
                    .shadow(radius: 30)
            }
            
            
            
            VStack(spacing: 0){                             //author data is grabbed from BookModel
                Text(book.authors)
                    .fontWeight(.thin)
                    .foregroundStyle(.gray)
                
                Text(book.title)                               //title data is grabbed from BookModel
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text(book.edition)                             //edition data is grabbed from BookModel
                    .font(.headline)
                    .fontWeight(.heavy)
            }
            .padding()
            
            
            VStack(spacing: 20){                                //description is grabbed from BookModel
                Text(book.description)
                    .foregroundStyle(.gray)
                    .padding()
            }
            
            
            
            HStack{                                         //Horizontal stack
                
                ForEach(book.categories, id: \.self) { category in      //ForEach loop for array of categories
                    Text(category)
                     .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20.0)
                                .stroke(lineWidth: 2)
                                .frame(height: 35)
                        )
                    
                
                    
                }
                
            }
            .padding()                                              //Price displayed using data in BookModel
            Text("Buy for \(String(book.price))")
                .padding()
                .background(.black)
                .foregroundColor(.white)
                .clipShape(Capsule())
            
            
        }
    }
}
#Preview {
    ContentView()
}

