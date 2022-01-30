//
//  Practice_ar.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/8.
//

import SwiftUI

struct Practice_ar: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var show_ar : Bool
    var body: some View {
        VStack{
            CameraView()
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {presentationMode.wrappedValue.dismiss()}){
                    Image(systemName: "arrowshape.turn.up.backward.circle")
                        .resizable()
                        .foregroundColor(Color.red)
                        .frame(width: 25, height: 25)
                }, trailing: Button(action: {show_ar.toggle()}){
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundColor(Color.red)
                        .frame(width: 25, height: 25)
                })
        }
    }
}

struct Practice_ar_Previews: PreviewProvider {
    static var previews: some View {
        Practice_ar(show_ar: .constant(true))
    }
}
