//
//  MainView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 12/06/24.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Tab = .contacts

    var body: some View {
        ZStack {
            VStack {
                ZStack(alignment: .bottom) {
                    TabView(selection: $selectedTab) {
                        NavigationStack {
                            ContactsView()                              
                        }
                        .tag(Tab.contacts)

                        ChatsView()
                            .tag(Tab.chats)

                        MoreView()
                            .tag(Tab.more)
                    }
                }
            }

            CustomTabBar(selectedTab: $selectedTab)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
        }
    }
}


#Preview {
    MainView()
}
