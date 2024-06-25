//
//  ContactDetailView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 21/06/24.
//

import SwiftUI

struct ContactDetailView: View {
    let brands: [String] = ["twitter", "instagram", "LinkedIn", "facebook"]
    var contact: Contact

    var body: some View {
        ZStack {
            Color.back
                .ignoresSafeArea()

            VStack(spacing: 0) {
                CustomNavBar(title: "Профиль", isBackButton: true, rightButtonIcon: "pensil")

                VStack(spacing: 40) {
                    VStack(spacing: 22) {
                        if let image = contact.image {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200, alignment: .center)
                                .cornerRadius(100)
                        } else {
                            Image("contact")
                                .frame(width: 200, height: 200)
                                .background(Color.searchBackground)
                                .cornerRadius(100)
                        }

                        VStack(spacing: 2) {
                            Text(contact.fullName)
                                .font(Font.custom("SF Pro Display", size: 24))
                                .fontWeight(.semibold)
                                .foregroundStyle(.text)

                            Text("+7 999 999-99-99")
                                .font(Font.custom("SF Pro Display", size: 16))
                                .foregroundColor(.secondaryText)
                        }
                    }

                    HStack(spacing: 12) {
                        ForEach(brands, id: \.self) { brand in
                            Image(brand)
                                .padding(.horizontal, 40)
                                .padding(.vertical, 10)
                                .frame(width: 72)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(.accent, lineWidth: 1.6)
                                )
                        }
                    }
                }
                .padding(.top, 46)

                Spacer()
            }
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
            .padding(.horizontal, 12)
        }
    }
}

#Preview {
    ContactDetailView(contact: Contact.samples[5])
}
