//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Sadman Adib on 18/7/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!) {
                Label("Learn more", systemImage: "book.fill")
                    .frame(width: 200, height: 50)
                    .tint(.red)
                    .background(.secondary)
                    .cornerRadius(10)
                    
                
            }
            
            Spacer()
//            Button {
//                isShowingSafariView = true
//            } label: {
//                //AFButton(title: "Learn more")
//                Label("Learn more", systemImage: "book.fill")
//
//            }
//            .buttonStyle(.bordered)
//            .controlSize(.large)
//            .tint(.red)
            
            
           
        }
//        .sheet(isPresented: $isShowingSafariView, content: {
//            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
//        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}




