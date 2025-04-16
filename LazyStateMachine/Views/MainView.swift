//
//  MainView.swift
//  LazyStateMachine
//
//  Created by Dima Kolesov on 15.04.2025.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        VStack {
            contentView
        }
        .onAppear {
            viewModel.send(event: .onAppear)
        }
        .onDisappear {
            viewModel.send(event: .onDisappear)
        }
    }
    
    @ViewBuilder
    private var contentView: some View {
        switch viewModel.state {
        case .start:
            ProgressView()
        case .loading:
            EmptyView()
        case .loaded(let items):
            List(items) { item in
                Text("Item \(item.id.uuidString.prefix(8))")
            }
        case .error(let error):
            ErrorView(message: error.localizedDescription)
        }
    }
}

#Preview {
    MainView(viewModel: MainViewModel())
}
