//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Guilherme Peppi on 28/07/22.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDeailView: Bool
    @State private var isShowsingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button {
                   isShowingDeailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                    
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowsingSafariView = true
            } label: {
               AFButton(title: "Lean More")
                    
            }
        }
        .sheet(isPresented: $isShowsingSafariView, content: { SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            
        })
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDeailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
