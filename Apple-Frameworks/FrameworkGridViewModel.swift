//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Guilherme Peppi on 28/07/22.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDeatilView = true
        }
    }
    
    @Published var isShowingDeatilView = false
}

struct Previews_FrameworkGridViewModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
