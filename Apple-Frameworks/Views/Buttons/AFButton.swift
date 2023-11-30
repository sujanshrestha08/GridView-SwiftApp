//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Sujan on 30/11/2023.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .font(.title2)
//            .fontWeight(.semibold)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)    }
}

#Preview {
    AFButton(title: "Test Title")
}
