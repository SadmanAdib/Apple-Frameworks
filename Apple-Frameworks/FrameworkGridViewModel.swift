//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Sadman Adib on 19/7/22.
//

import Foundation

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}
