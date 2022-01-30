//
//  ControlView.swift
//  Competition(I)
//
//  Created by 張宸 on 2021/7/20.
//

import SwiftUI

struct ControlView: View {
    @Binding var showBrowse: Bool

    var body: some View {
        ControlButtonBar(showBrowse: $showBrowse)
    }
}

struct ControlButtonBar: View {
    @Binding var showBrowse: Bool
    var body: some View{
        HStack{
            
            // Recent Button
//            ControlButton(systemIconName: "arrow.triangle.2.circlepath.camera"){
//                print("Press Toggle Camera Button")
//            }
            
            // Browse Button
            ControlButton(systemIconName: "square.grid.2x2"){
                print("已按下瀏覽鍵")
                self.showBrowse.toggle()
            }.sheet(isPresented: $showBrowse, content: {
                BrowseView(showBrowse: $showBrowse)
            })
            
        }
        .frame(maxWidth: 500)
        .padding(15)
        .background(Color.black.opacity(0.25))
        
    }
}

struct ControlButton: View {
    let systemIconName: String
    let action: () -> Void
    
    var body: some View{
        Button( action: {
            self.action()
        }){
            Image(systemName: systemIconName)
                .font(.system(size: 25))
                .foregroundColor(.white)
                .buttonStyle(PlainButtonStyle())
        }
        .frame(width: 50, height: 50)
    }
}
