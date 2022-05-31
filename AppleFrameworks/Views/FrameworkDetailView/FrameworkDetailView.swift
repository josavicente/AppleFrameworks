//
//  detailFrameworkView.swift
//  AppleFrameworks
//
//  Created by Josafat Vicente Pérez on 19/5/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailModel
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                XButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
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
            frameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) {
                AFButton(title: "Learn More")
            }
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                Label("Learn more", systemImage: "book.fill")
//                AFButton(title: "Learn More")
//            }.buttonStyle(.bordered)
//                .controlSize(.large)
//                .buttonBorderShape(.capsule)
//                .tint(.red)
//            //            .fullScreenCover(isPresented: $isShowingSafariView, content: {
//            //                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
//            //            })
//                .sheet(isPresented: $viewModel.isShowingSafariView, content: {
//                SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//            })
        }.padding()
    }
}

//struct detailFrameworkView_Previews: PreviewProvider {
//    static var previews: some View {
//        FrameworkDetailView(framework: MockData.frameworks[7], isShowingDetailView: .constant(false))
//            .preferredColorScheme(.dark)
//    }
//}


