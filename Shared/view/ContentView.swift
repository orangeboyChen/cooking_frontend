
//
//  ContentView.swift
//  Shared
//
//  Created by orangeboy Chen on 2022/4/20.
//

import SwiftUI
import SwiftUIX

enum TabType {
    case favorite
    case recommend
    case my
    
    var title: String {
        switch self {
        case .favorite:
            return "计划"
        case .recommend:
            return "推荐"
        case .my:
            return "我的"
        }
    }
    
    var selectedIcon: String {
        switch self {
        case .favorite:
            return "star.fill"
        case .recommend:
            return "house.fill"
        case .my:
            return "person.fill"
        }
    }
    
    var unseletedIcon: String {
        switch self {
        case .favorite:
            return "star"
        case .recommend:
            return "house"
        case .my:
            return "person"
        }
    }
}

class TabInfo: ObservableObject {
    @Published var pageType = TabType.recommend
    @Published var isShowingTabBar = true
    
    func setPageType(_ pageType: TabType) {
        withAnimation {
            self.pageType = pageType
            isShowingTabBar = true
        }
    }
}

class ContentViewModelView: ObservableObject {
    @Published var isLogin = UserDefaults.standard.bool(forKey: "isLogin")
    @Published var isSignUp = true
    
}

struct ContentView: View {
    
    let authService = AuthService.instance
    
    @StateObject var tabInfo = TabInfo()
    
    @StateObject var vm = ContentViewModelView()
    
    var body: some View {
        ZStack{
            if !vm.isLogin {
                LoginView(viewModel: vm)
            }
            else if !vm.isSignUp{
                UserProfile(viewModel: vm)
            }
            else{
                Group {
                    switch tabInfo.pageType {
                    case .favorite:
                        FavoriteView()
                    case .recommend:
                        RecommendView()
                    case .my:
                        MyView()
                    }
                }
                .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                    .onEnded({ value in
                        if value.translation.height < 0 {
                            withAnimation {
                                tabInfo.isShowingTabBar = false
                            }
                            
                        }
                        
                        if value.translation.height > 0 {
                            withAnimation {
                                tabInfo.isShowingTabBar = true
                            }
                        }
                    }))
                
                TabBar()
            }
            
            
            
        }
        .environmentObject(tabInfo)
    }
}

struct TabBar: View {
    
    @EnvironmentObject var tabInfo: TabInfo
    
    var body: some View {
        VStack {
            if tabInfo.isShowingTabBar {
                Spacer()
                
                HStack {
                    Spacer()
                    TabBarButton(pageType: .favorite)
                    Spacer()
                    TabBarButton(pageType: .recommend)
                    Spacer()
                    TabBarButton(pageType: .my)
                    Spacer()
                }
                .padding(.vertical, 4)
                .background(
                    Rectangle()
                        .opacity(0.1)
                        .background(VisualEffectBlurView(blurStyle: .systemThinMaterialDark))
                )
                .cornerRadius(20.0)
                .padding()
                .transition(.move(edge: .bottom).combined(with: .opacity))
                .maxWidth(350)
            }
            
        }
    }
}

struct TabBarButton: View {
    
    @EnvironmentObject var tabInfo: TabInfo
    
    let pageType: TabType
    
    var body: some View {
        Button {
            tabInfo.setPageType(pageType)
        } label: {
            Group {
                VStack {
                    Image(systemName: tabInfo.pageType == pageType ? pageType.selectedIcon : pageType.unseletedIcon)
                        .font(.system(size: 25))
                    Spacer().frame(height: 3.0)
                    Text(pageType.title)
                        .font(.caption)
                }
                .foregroundColor(tabInfo.pageType == pageType ? Color(hexadecimal6: 0xFFC300) : .gray)
                .padding(4.0)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




