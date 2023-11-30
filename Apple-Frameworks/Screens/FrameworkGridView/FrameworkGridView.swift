//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sujan on 30/11/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView{LazyVGrid(columns: viewModel.columns) {
                ForEach(MockData.frameworks) {
                    framework in FrameworkTitleView(
                        framework: framework)
                    .onTapGesture {
                        viewModel.selectedFramework = framework
                    }
                }
                    }
                }.navigationTitle("🍏 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView)
            {
                FrameworkDetailView(
                    isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework ?? MockData.sampleFramework)
                }
            }
        }
    }


#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


