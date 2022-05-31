//
//  XButton.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 19/5/22.
//

import SwiftUI

struct XButton: View {
    
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        Button{
            isShowingDetailView = false
        } label : {
            Image(systemName: "xmark")
                .foregroundColor(Color(.label))
                .imageScale(.large)
                .frame(width: 44, height: 44)
        }
    }
}

//struct XButton_Previews: PreviewProvider {
//    static var previews: some View {
//        XButton()
//    }
//}
