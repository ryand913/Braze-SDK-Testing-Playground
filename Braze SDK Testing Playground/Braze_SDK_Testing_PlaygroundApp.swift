//
//  Braze_SDK_Testing_PlaygroundApp.swift
//  Braze SDK Testing Playground
//
//  Created by Ryan Dusenbury on 1/9/24.
//

import SwiftUI
import BrazeKit
import BrazeUI

@main
struct Braze_SDK_Testing_PlaygroundApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


class AppDelegate: UIResponder, UIApplicationDelegate {
static var braze: Braze? = nil
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
      let configuration = Braze.Configuration(
            apiKey: "0bc2f7b0-6de2-4c29-8050-4914d4f4b59e",
            endpoint: "sondheim.braze.com"
      )
      let braze = Braze(configuration: configuration)
      AppDelegate.braze = braze
    return true
  }

}

