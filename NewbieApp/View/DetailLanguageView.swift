//
//  DetailMovieView.swift
//  NewbieApp
//
//  Created by Rizky Alfa Uji Gultom on 07/05/20.
//  Copyright © 2020 Rizky Alfa Uji Gultom. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct DetailLanguageView: View {
    private var movie: Language
    init(movie: Language) {
        self.movie = movie
    }
    
    var body: some View{
        NavigationView {
            ScrollView{
                VStack{
                    WebImage(url: URL(string: self.movie.image))
                        .resizable()
                        .placeholder{
                            Rectangle().foregroundColor(.gray)
                    }
                    .indicator(.activity)
                    .animation(.easeOut(duration: 0.5))
                    .transition(.fade)
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
                    .frame(maxWidth: (UIScreen.main.bounds.width/2), maxHeight: 150, alignment: .center)
                    
                    Text(self.movie.name)
                        .padding()
                    
                    Text(self.movie.overview)
                        .padding()
                    
                }
                
            }
        }
        .navigationBarTitle(Text(movie.name), displayMode: .inline)
    }
}

struct DetailLanguageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailLanguageView(movie: LanguageModel.languageList[1])
    }
}
