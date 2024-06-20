//
//  ContactCell.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 19/06/24.
//

import SwiftUI

struct ContactCell: View {
    var contact: Contact

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 16) {
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
        }
        .padding()
    }
}

#Preview {
    VStack {
        ContactCell(contact: Contact.samples[5])
        ContactCell(contact: Contact.samples[0])
    }
}
