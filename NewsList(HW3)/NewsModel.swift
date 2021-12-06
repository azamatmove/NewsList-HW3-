//
//  NewsModel.swift
//  NewsList(HW3)
//
//  Created by Azamat Sarinzhiev on 2/12/21.
//

import Foundation
class NewsModel {
    var title: String
    var description: String
    var image: String
    var isBanner = false
    
    init(title:String, description:String, image:String) {
        self.title = title
        self.description = description
        self.image = image
    }
}
