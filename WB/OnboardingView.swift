//
//  OnboardingView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 08/06/24.
//

import SwiftUI

struct OnboardingView: View {
    @State private var isShowingTerms = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.back.ignoresSafeArea()

                VStack {
                    VStack(spacing: 42) {
                        Image("Illustration")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width - 112)

                        Text("""
                         Общайтесь с друзьями
                         и близкими легко
                         """)
                        .font(Font.custom("SF Pro Display", size: 24))
                        .fontWeight(.bold)
                        .foregroundStyle(.text)
                        .multilineTextAlignment(.center)
                    }
                    .frame(maxHeight: .infinity, alignment: .center)

                    VStack(spacing: 18) {
                        Button {
                            isShowingTerms = true
                        } label: {
                            Text("Пользовательское соглашение")
                                .font(Font.custom("SF Pro Display", size: 14).weight(.semibold))
                                .foregroundStyle(.text)
                        }

                        NavigationLink {
                            MainView()
                        } label: {
                            Text("Начать общаться")
                                .font(Font.custom("SF Pro Display", size: 16))
                                .fontWeight(.semibold)
                                .foregroundStyle(.buttonText)
                                .padding()
                                .frame(width: UIScreen.main.bounds.width - 48)
                                .background(Color.button)
                                .cornerRadius(30)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .sheet(isPresented: $isShowingTerms) {
                VStack {
                    Button {
                        isShowingTerms = false
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .foregroundStyle(.gray)
                    }
                    .padding()

                    Text("Пользовательское соглашение")
                        .frame(maxHeight: .infinity, alignment: .center)
                }
            }
        }
        .tint(.black)
    }
}


#Preview {
    OnboardingView()
}
