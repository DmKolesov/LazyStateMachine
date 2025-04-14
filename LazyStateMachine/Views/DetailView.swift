//
//  DetailView.swift
//  LazyStateMachine
//
//  Created by Dima Kolesov on 15.04.2025.
//

import SwiftUI

struct DetailView: View {
    let item: String
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "text.magnifyingglass")
                .font(.system(size: 60))
                .foregroundColor(.blue)
            
            Text(item)
                .font(.title)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Details")
    }
}

#Preview {
    DetailView(item: "Show Detail")
}

