//
//  frameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 20/5/22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramwork: Framework? {
        didSet{ isShowingDetailView = true }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
