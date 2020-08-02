//
//  ProfileView.swift
//  NewbieApp
//
//  Created by Rizky Alfa Uji Gultom on 09/05/20.
//  Copyright © 2020 Rizky Alfa Uji Gultom. All rights reserved.
//

import SwiftUI

struct ProfileView : View{
    var body: some View{
        NavigationView{
            VStack(alignment: .center, spacing: 0){
                Image(LanguageModel.imageProfile)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .frame(height: 300)
                
                Text(LanguageModel.creatorName)
                    .padding()
                Text(LanguageModel.creatorEmail)
                    .padding()
                Spacer()
            }
        }
        .navigationBarTitle(Text(LanguageModel.profile))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
