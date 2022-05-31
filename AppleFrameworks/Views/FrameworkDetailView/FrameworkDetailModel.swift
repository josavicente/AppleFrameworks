//
//  FrameworkDetailModel.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 31/5/22.
//

import SwiftUI

final class FrameworkDetailModel: ObservableObject {
    
    var framework: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init (framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
    
}
