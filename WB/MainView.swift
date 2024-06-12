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
            ContactsView()
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
