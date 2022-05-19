//
//  detailFrameworkView.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 19/5/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button{
                    isShowingDetailView = false
                } label : {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
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
        FrameworkDetailView(framework: MockData.frameworks[7], isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}


