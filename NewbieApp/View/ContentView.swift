//
//  ContentView.swift
//  NewbieApp
//
//  Created by Rizky Alfa Uji Gultom on 07/05/20.
//  Copyright © 2020 Rizky Alfa Uji Gultom. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var sayHello = false
    var body: some View {
        NavigationView {
            List(LanguageModel.languageList){ it in
                NavigationLink(destination: DetailLanguageView(movie: it)){
                    LanguageCardView(coverMovie: it.image, titleMovie: it.name)
                }
            }
            .navigationBarTitle(LanguageModel.titleApp)
            .navigationBarItems(trailing:
                NavigationLink(destination: ProfileView()){
                    Image(systemName: LanguageModel.iconPerson).imageScale(.large)
                }
            )
        }.onAppear {
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().showsVerticalScrollIndicator = false
        }.onDisappear {
            UITableView.appearance().separatorStyle = .singleLine
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
