//
//  MainTabView.swift
//  LMessenger
//
//  Created by 박진성 on 2/3/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab : MainTabType = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(MainTabType.allCases,id: \.self) { tab in
                
                Group {
                    switch tab {
                    case .home:
                        HomeView(viewModel: .init())
                    case .chat:
                        ChatListView()
                    case .phone:
                        Color.blackFix
                    }
                }
                .tabItem {
                    Label(tab.title, image: tab.imageName(selected: selectedTab == tab))
                }
                .tag(tab)
            }
        }
        .tint(.bkText)
    }
    
    // 아직 swiftUI에서는 선택되지 않은 탭의 컬러 변경은 구현되지 X UIKit에 의존해야함.
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.bkText)
    }
}

#Preview {
    MainTabView()
}
