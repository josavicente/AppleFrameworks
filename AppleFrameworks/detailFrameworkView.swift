//
//  detailFrameworkView.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 19/5/22.
//

import SwiftUI

struct detailFrameworkView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                XButton()
            }
            Spacer()
            frameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                print("Press")
            } label: {
                AFButton(title: "Learn More")
            }
            
        }.padding()
    }
}

struct detailFrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        detailFrameworkView(framework: MockData.frameworks[7])
            .preferredColorScheme(.dark)
    }
}


