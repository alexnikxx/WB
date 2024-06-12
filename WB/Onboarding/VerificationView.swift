//
//  VerificationView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 10/06/24.
//

import SwiftUI

struct VerificationView: View {
    var body: some View {
        ZStack {
            Color.back.ignoresSafeArea()

            VStack {
                Text("Hello, World!")
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton())
    }
}

#Preview {
    VerificationView()
}
