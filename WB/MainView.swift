//
//  MainView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 12/06/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Tabs = .contacts

    var body: some View {
        TabView {
            NavigationStack {
                ContactsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarLeading) {
                            Text("Контакты")
                                .font(Font.custom("SF Pro Display", size: 18))
                                .fontWeight(.semibold)
                                .foregroundStyle(.text)
                        }

                        ToolbarItem(placement: .topBarTrailing) {
                            Image("plus")
                                .foregroundStyle(.text)
                        }
                    }
            }
                    .tabItem {
                        Image("contacts")
                    }
                    .tag(Tabs.contacts)

            ChatsView()
                .tabItem {
                    Image("chats")
                }
                .tag(Tabs.chats)

            MoreView()
                .tabItem {
                    Image("more")
                }
                .tag(Tabs.more)
        }
    }
}

#Preview {
    MainView()
}
