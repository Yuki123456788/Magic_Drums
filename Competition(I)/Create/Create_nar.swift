//
//  Create_nar.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/8.
//

import SwiftUI

struct Create_nar: View {
    @Binding var show_ar: Bool
    @Environment(\.presentationMode) var presentationMode
    @Binding var isShowPreviewVideo: Bool
    @Binding var isRecording: Bool
    var body: some View {
        VStack{
            Spacer()
            // MARK: - Drum (start)
            VStack {
                HStack {
                    Image(systemName: "circle")
                        .resizable().frame(width: 80, height: 80)
                        .background(Color.yellow)
                        .clipShape(Circle())
                        .onTapGesture {
                            playSoundCrashCymbal(sound: "CrashCymbal", type: "wav")
                        }
                    Spacer().frame(width: 150)
                }
                .frame(width: 380)
                HStack {
                            Image(systemName: "circle")
                                .resizable().frame(width: 80, height: 80)
                                .background(Color.yellow)
                                .clipShape(Circle())
                                .onTapGesture {
                                    playSoundHiHatH(sound: "HiHatH", type: "mp3")
                                }
                                
                        Image(systemName: "oval")
                            .resizable().frame(width: 60, height: 50)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 35))
                            .onTapGesture {
                                playSoundTomTom(sound: "TomTom", type: "mp3")
                            }
                        Image(systemName: "oval")
                            .resizable().frame(width: 60, height: 50)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 35))
                            .onTapGesture {
                                playSoundTomTom(sound: "TomTom", type: "mp3")
                            }
                        Image(systemName: "circle")
                            .resizable().frame(width: 80, height: 80)
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .onTapGesture {
                                playSoundRideCymbal(sound: "RideCymbal", type: "mp3")
                            }
                            
                            
                }
            }
            HStack {
                Image(systemName: "oval")
                    .resizable().frame(width: 70, height: 60)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 35))
                    .onTapGesture {
                        playSoundSnareDrum(sound: "SnareDrum", type: "wav")
                    }
                Image(systemName: "circle")
                    .resizable().frame(width: 100, height: 100)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .onTapGesture {
                        playSoundBassDrum(sound: "BassDrum", type: "wav")
                    }
                Image(systemName: "oval")
                    .resizable().frame(width: 70, height: 60)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 35))
                    .onTapGesture {
                        playSoundFloorTom(sound: "FloorTom", type: "mp3")
                    }
                // Drum (end)
            }
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action: {presentationMode.wrappedValue.dismiss()}){
                    Image(systemName: "arrowshape.turn.up.backward.circle")
                        .resizable()
                        .foregroundColor(Color.red)
                        .frame(width: 25, height: 25)
                }, trailing: Button(action: {show_ar.toggle()}){
                    Image(systemName: "camera.viewfinder")
                        .resizable()
                        .foregroundColor(Color.red)
                        .frame(width: 25, height: 25)
                })
            Spacer()
            RecordingView(isRecording: $isRecording, isShowPreviewVideo: $isShowPreviewVideo)
                .padding()
        }
        
    }
}

//struct Create_nar_Previews: PreviewProvider {
//    static var previews: some View {
//        Create_nar(show_ar: .constant(false))
//    }
//}
