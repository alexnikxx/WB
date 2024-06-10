//
//  CustomBackButton.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 10/06/24.
//

import SwiftUI

struct CustomBackButton: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(.black)
                .font(.caption.bold())
        }
    }
}

#Preview {
    CustomBackButton()
}
