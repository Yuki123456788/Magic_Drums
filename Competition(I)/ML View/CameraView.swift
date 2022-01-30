//
//  CameraView.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/23.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        StoryboardViewController()
            .edgesIgnoringSafeArea(.all)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}

struct StoryboardViewController : UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<StoryboardViewController>) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "CameraPage")
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<StoryboardViewController>) {
    }
}
