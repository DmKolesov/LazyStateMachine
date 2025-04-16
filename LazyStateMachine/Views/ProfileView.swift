//
//  ProfileView.swift
//  LazyStateMachine
//
//  Created by Dima Kolesov on 16.04.2025.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(.top, 40)
                
                VStack(spacing: 8) {
                    Text("Иван Иванов")
                        .font(.title2.weight(.semibold))
                    Text("example@apple.com")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Button(action: { isEditing.toggle() }) {
                    HStack {
                        Text("Редактировать профиль")
                            .font(.headline)
                        Image(systemName: "pencil")
                    }
                    .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .padding()
                
                Spacer()
            }
            .navigationTitle("Профиль")
            .sheet(isPresented: $isEditing) {
                Text("Редактирование профиля")
                    .presentationDetents([.medium])
            }
        }
        .tabItem {
            Label("Профиль", systemImage: "person.fill")
        }
    }
}

#Preview {
    ProfileView(viewModel: ProfileViewModel())
}

