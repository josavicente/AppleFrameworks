//
//  XButton.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 19/5/22.
//

import SwiftUI

struct XButton: View {
    var body: some View {
        Button{
            
        } label : {
            Image(systemName: "xmark")
                .foregroundColor(Color(.label))
                .imageScale(.large)
                .frame(width: 44, height: 44)
        }
    }
}

struct XButton_Previews: PreviewProvider {
    static var previews: some View {
        XButton()
    }
}
