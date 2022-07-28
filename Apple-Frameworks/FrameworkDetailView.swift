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
    
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                Button {
                   isShowingDeailView = true
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
                
            } label: {
               AFButton(title: "Lean More")
                    
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
