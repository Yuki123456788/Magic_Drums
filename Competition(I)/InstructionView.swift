//
//  InstructionView.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/24.
//

import SwiftUI

struct InstructionView: View {
    var body: some View {
        ZStack {
            Color.purple.opacity(0.5).edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: true) {
                // MARK: - Drum set
                VStack{
                    Text("Drum Set")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.purple, lineWidth: 5))
                        .padding()
                    
                    VStack {
                        HStack {
                            ZStack {
                                Image(systemName: "circle")
                                    .resizable().frame(width: 80, height: 80)
                                    .background(Color.yellow)
                                    .clipShape(Circle())
                                Text("Crash")
                            }
                            Spacer().frame(width: 150)
                        }
                        .frame(width: 380)
                        HStack {
                            ZStack {
                                Image(systemName: "circle")
                                    .resizable().frame(width: 80, height: 80)
                                    .background(Color.yellow)
                                    .clipShape(Circle())
                                Text("Hi-Hat")
                            }
                            
                            ZStack {
                                Image(systemName: "oval")
                                    .resizable().frame(width: 60, height: 50)
                                    .background(Color.gray)
                                    .clipShape(RoundedRectangle(cornerRadius: 35))
                                Text("Tom")
                            }
                            ZStack {
                                Image(systemName: "oval")
                                    .resizable().frame(width: 60, height: 50)
                                    .background(Color.gray)
                                    .clipShape(RoundedRectangle(cornerRadius: 35))
                                Text("Tom")
                            }
                            ZStack {
                                Image(systemName: "circle")
                                    .resizable().frame(width: 80, height: 80)
                                    .background(Color.yellow)
                                    .clipShape(Circle())
                                Text("Ride")
                            }
                            
                            
                        }
                    }
                    HStack {
                        ZStack {
                            Image(systemName: "oval")
                                .resizable().frame(width: 70, height: 60)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 35))
                            Text("Snare")
                        }
                        ZStack {
                            Image(systemName: "circle")
                                .resizable().frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(Circle())
                            Text("Bass")
                        }
                        ZStack {
                            Image(systemName: "oval")
                                .resizable().frame(width: 70, height: 60)
                                .background(Color.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 35))
                            Text("Floor")
                        }
                    }
                }
                // MARK: - AR Drum Set
                VStack{
                    Text("AR Drum Set")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.purple, lineWidth: 5))
                        .padding()

                    Label(title: {
                        VStack(alignment: .leading){
                            HStack {
                                Text("Step 1.  Tab")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.leading)
                                Image(systemName: "arkit")
                                    .resizable()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                            }
                            HStack {
                                Text("Step 2.  Tab")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.leading)
                                Image(systemName: "square.grid.2x2")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25, height: 25)
                            }
                            Text("Step 3.  Choose the Drum Set\n\t\t  you want.")
                                .fontWeight(.medium)
                                .padding()
                            Text("Step 4.  Choose a place you want.")
                                .fontWeight(.medium)
                                .padding()
                            HStack {
                                Text("Step 5.  Tab")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.leading)
                                Image(systemName: "checkmark.circle.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                            }
                            Text("Tip : After the Drum appear,\n\t  you can press it and\n\t  move front and back or\n\t  rotate left and right")
                                .fontWeight(.medium)
                                .padding()
                        }
                    }, icon: {})
                }
                
                // MARK: - Play Drum Steps
                VStack{
                    Text("Play Drum Steps")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.purple, lineWidth: 5))
                        .padding()

                    Text("On Screen : ")
                        .fontWeight(.bold)
                    Label(title: {
                        VStack(alignment: .leading){
                            Text("Step 1.  Open the app.")
                                .fontWeight(.medium)
                                .padding()
                            Text("Step 2.  Choose Practice or Create. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("Step 3.  Tap the Drum button on\n\t\t  the screen and play music. ")
                                .fontWeight(.medium)
                                .padding()
                        }
                    }, icon: {})
                    Spacer().frame(height: 30)
                    Text("On Camera : ")
                        .fontWeight(.bold)
                    Label(title: {
                        VStack(alignment: .leading){
                            Text("Step 1.  Open the app.")
                                .fontWeight(.medium)
                                .padding()
                            Text("Step 2.  Choose Practice or Create. ")
                                .fontWeight(.medium)
                                .padding()
                            HStack {
                                Text("Step 3.  Tab")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.leading)
                                Image(systemName: "camera.viewfinder")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.red)
                            }
                            Text("Step 4.  Place your iphone in front\n\t\t of you, let the camera\n\t\t capture your whole body. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("Step 5.  Do the specific motion\n\t\t to play the corresponding\n\t\t drum. ")
                                .fontWeight(.medium)
                                .padding()
                        }
                    }, icon: {})
                }
                // MARK: - Motion to Drum
                VStack {
                    Text("Motion to Drum")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.purple, lineWidth: 5))
                        .padding()
                    
                    Label(title: {
                        VStack(alignment: .leading){
                            Text("Snare Drum : Left hand hit above\n\t\t   \t     left knee. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("Floor Tom : Right hand hit above\n\t\t\t  right knee. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("TomTom (R) : Right hand hit straight\n\t\t\t     at the front. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("TomTom (L) : Left hand hit straight\n\t\t\t     at the front. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("Crash Cymbal : Left hand hit front\n\t\t\t\t  left of the body. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("Ride Cymbal : Right hand hit front\n\t\t\t      right of the body. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("HiHat (H) : Left hand hit left of\n\t\t\tthe body")
                                .fontWeight(.medium)
                                .padding()
                            Text("HiHat (F) : Left foot go upside down. ")
                                .fontWeight(.medium)
                                .padding()
                            Text("Bass Drum : Right foot go upside down. ")
                                .fontWeight(.medium)
                                .padding()
                        }
                    }, icon: {})
                }
                // MARK: - Create Mode
                VStack{
                    Text("Create Mode")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.purple, lineWidth: 5))
                        .padding()

                    Label(title: {
                        VStack(alignment: .leading){

                                Text("Step 1.  Choose Create Mode")
                                    .fontWeight(.medium)
                                    .padding()
                            HStack {
                                Text("Step 2.  Tab")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.leading)
                                Image(systemName: "record.circle")
                                    .resizable()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                                Text("to start recording.")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.trailing)
                            }
                            HStack {
                                Text("Step 3.  Tab")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.leading)
                                Image(systemName: "stop.circle")
                                    .resizable()
                                    .foregroundColor(.red)
                                    .frame(width: 25, height: 25)
                                Text("to stop recording.")
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                    .padding(.top)
                                    .padding(.trailing)
                            }
                            Text("Step 4.  Store the video to your iPhone.")
                                .fontWeight(.medium)
                                .padding()
                        }
                    }, icon: {})
                }
                // MARK: -
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView()
    }
}
