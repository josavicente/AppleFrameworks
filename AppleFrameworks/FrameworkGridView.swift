//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 17/5/22.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        frameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramwork = framework
                            }
                    }
                }
            }.navigationTitle("🍎 Framworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramwork ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            
        }
    }
    
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .previewDevice("iPhone 12 Pro Max")
            .preferredColorScheme(.dark)
    }
}


