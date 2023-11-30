//
//  DetailScreen.swift
//  Apple-Frameworks
//
//  Created by Sujan on 30/11/2023.
//


import SwiftUI

struct FrameworkDetailView : View{
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var framework: Framework
    
    var body: some View{
        
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
           FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                    
            }.fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url:  URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            })
        }
    }
    
    
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
}
