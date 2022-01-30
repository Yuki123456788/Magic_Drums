//
//  Create.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/9.
//

import SwiftUI

struct Create: View {
    @State private var show_ar = false
    @Binding var isShowPreviewVideo: Bool
    @Binding var isRecording: Bool
    var body: some View {
        ZStack{
            Color.purple.opacity(0.5).edgesIgnoringSafeArea(.all)
            if show_ar {
                Create_ar(show_ar: $show_ar)
            } else {
                Create_nar(show_ar: $show_ar, isShowPreviewVideo: $isShowPreviewVideo, isRecording: $isRecording)
            }
        }
    }
}

//struct Create_Previews: PreviewProvider {
//    static var previews: some View {
//        Create()
//    }
//}
