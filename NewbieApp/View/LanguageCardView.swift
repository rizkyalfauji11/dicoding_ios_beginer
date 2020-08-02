//
//  MovieCardView.swift
//  NewbieApp
//
//  Created by Rizky Alfa Uji Gultom on 07/05/20.
//  Copyright © 2020 Rizky Alfa Uji Gultom. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct LanguageCardView: View {
    
    private var coverMovie: URL?
    private var titleMovie: String
    @State var numberOfRows = 0
    
    
    init(coverMovie: String, titleMovie: String) {
        self.coverMovie = URL(string: coverMovie) ?? nil
        self.titleMovie = titleMovie
    }
    
    
    var body: some View{
        HStack(alignment: .top, spacing: 0){
            WebImage(url: self.coverMovie)
                .resizable()
                .placeholder{
                    Rectangle().foregroundColor(.gray)
            }
            .indicator(.activity)
            .animation(.easeOut(duration: 0.5))
            .transition(.fade)
            .scaledToFit()
            .frame(maxWidth: (UIScreen.main.bounds.width / 2.5), minHeight: 150, maxHeight: 150)
            
            VStack(alignment: .leading, spacing: 0){
                Text(titleMovie)
                    .padding(16)
                    
                    
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
            }
            
            
            Spacer()
            
        }
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 7, x: 0, y: 2)
    }
}
