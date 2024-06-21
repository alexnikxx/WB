//
//  ContactCell.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 19/06/24.
//

import SwiftUI

struct ContactCell: View {
    @StateObject private var viewModel = ContactsViewModel()
    var contact: Contact

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 16) {
                ZStack {
                    if let image = contact.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 48, height: 48)
                            .cornerRadius(16)
                    } else {
                        Text(contact.initials)
                            .foregroundStyle(.white)
                            .frame(width: 48, height: 48)
                            .background(Color.button)
                            .cornerRadius(16)
                    }

                    if contact.status == "Online" {
                        Image("online")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .offset(x: 20, y: -20)
                    }

                    if contact.hasStories {
                        if contact.image != nil {
                            viewModel.strokeForStories(colors: [.gradientStrokeImage1, .gradientStrokeImage2], startPoint: .leading, endPoint: .trailing)
                        } else {
                            viewModel.strokeForStories(colors: [.gradientStroke1, .gradientStroke2], startPoint: .topLeading, endPoint: .bottomTrailing)
                        }
                    }
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text(contact.fullName)
                        .font(Font.custom("SF Pro Display", size: 14))
                        .fontWeight(.semibold)
                        .foregroundStyle(.text)

                    Text(contact.status)
                        .font(Font.custom("SF Pro Display", size: 12))
                        .foregroundStyle(.secondaryText)
                }


                Spacer()
            }
            .offset(x: contact.hasStories ? -4 : 0, y: 0)
        }
        .padding()
    }
}

#Preview {
    VStack {
        ContactCell(contact: Contact.samples[0])
        ContactCell(contact: Contact.samples[2])
    }
}
