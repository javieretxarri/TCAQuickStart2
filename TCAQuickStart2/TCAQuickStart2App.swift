//
//  TCAQuickStart2App.swift
//  TCAQuickStart2
//
//  Created by Javier Etxarri on 15/6/23.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCAQuickStart2App: App {
    static let store = Store(initialState: ContactsFeature.State()) {
        ContactsFeature()
            ._printChanges()
    }

    var body: some Scene {
        WindowGroup {
            ContactsFeatureView(
                store: TCAQuickStart2App.store)
        }
    }
}
