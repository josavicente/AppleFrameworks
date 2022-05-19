//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 17/5/22.
//

import SwiftUI

struct FrameworkGridView: View {
    
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
                                print("Selection")
                            }
                    }
                }
            }.navigationTitle("🍎 Framworks")
            
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


