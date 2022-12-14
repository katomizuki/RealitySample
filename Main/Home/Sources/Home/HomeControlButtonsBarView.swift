//
//  File.swift
//  
//
//  Created by ミズキ on 2022/12/14.
//

import SwiftUI
import ComposableArchitecture

public struct HomeControlButtonsBarView: View {
    public let store: StoreOf<HomeFeature>
    public var body: some View {
        HStack(alignment: .center,
               content: {
            HomeControlsButtons(store: store)
        })
    }
}
