//
//  BookModel.swift
//  Books
//
//  Created by Julian on 2/14/24.
//

import Foundation


struct Book: Identifiable{          //model structure called Book conforms to protocol Identifiable
    let id = UUID()                 //property id initialized to UUID
    
    let image: String
    let authors: String
    let title: String
    let edition: String
    let description: String
    let categories: [String]
    let price: Double
    
    
    //initialized data
    init(image: String, authors: String, title: String, edition: String, description: String, categories: [String], price: Double) {
        self.image = image
        self.authors = authors
        self.title = title
        self.edition = edition
        self.description = description
        self.categories = categories
        self.price = price
    }
}




