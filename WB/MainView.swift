//
//  MainView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 10/06/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color.back.ignoresSafeArea()

            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton())
    }
}

#Preview {
    MainView()
}
