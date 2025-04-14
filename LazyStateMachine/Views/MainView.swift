//
//  MainView.swift
//  LazyStateMachine
//
//  Created by Dima Kolesov on 15.04.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Items") {
                    ForEach(["Item 1", "Item 2", "Item 3"], id: \.self) { item in
                        NavigationLink(destination: DetailView(item: item)) {
                            HStack {
                                Image(systemName: "doc.text.magnifyingglass")
                                    .foregroundColor(.blue)
                                Text(item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Main")
        }
    }
}

#Preview {
    MainView()
}
