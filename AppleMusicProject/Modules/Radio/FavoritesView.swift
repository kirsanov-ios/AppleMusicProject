//
//  FavouritesView.swift
//  AppleMusicProject
//
//  Created by Oleg Kirsanov on 15.10.2021.
//

import SwiftUI

struct FavoritesView: View {
    @State var items = RadioModel.favoritesData
    
    let rows: [GridItem] = [
        GridItem(.fixed(330))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Divider()
            LazyHGrid(rows: rows) {
                ForEach(items, id: \.id) { item in
                    FavoritesItem(image: item.image, title: item.title, category: item.category, description: item.description)
                }
            }
            .padding(.leading, 12)
            .padding(.bottom, 12)
            Divider()
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}