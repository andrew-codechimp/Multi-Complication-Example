//
//  MultiCompApp.swift
//  MultiComp WatchKit Extension
//
//  Created by Andrew Jackson on 17/10/2020.
//

import SwiftUI
import WatchKit
import ClockKit

@main
struct MultiCompApp: App {
    @Environment(\.scenePhase) var scenePhase

    @State private var selectedTab = 0

    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView(selection: $selectedTab) {
                    ContentView(instance: 0).tag(0)
                    ContentView(instance: 1).tag(1)
                    ContentView(instance: 2).tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
            }
            .onContinueUserActivity("org.codechimp.multicomp", perform: {userActivity in
                if let id = userActivity.userInfo?["instance"] as? Int {
                    selectedTab = id
                }
            })
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                let server = CLKComplicationServer.sharedInstance()
                
                for complication in server.activeComplications ?? [] {
                    server.reloadTimeline(for: complication)
                }

                server.reloadComplicationDescriptors()
            default: break
            }
        }
    }
}
