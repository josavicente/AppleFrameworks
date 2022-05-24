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
    @State private var isShowingSafariView = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                XButton(isShowingDetailView: $isShowingDetailView)
//                Button{
//                    isShowingDetailView = false
//                } label : {
//                    Image(systemName: "xmark")
//                        .foregroundColor(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44, height: 44)
//                }
            }
            Spacer()
            frameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn more", systemImage: "book.fill")
                // AFButton(title: "Learn More")
            }.buttonStyle(.bordered)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .tint(.red)
            //            .fullScreenCover(isPresented: $isShowingSafariView, content: {
            //                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            //            })
            .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }.padding()
    }
}

struct detailFrameworkView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[7], isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}

