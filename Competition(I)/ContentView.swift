//
//  ContentView.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/8.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @StateObject var placementSettings = PlacementSettings()
    @State var isShowPreviewVideo: Bool = false
    @State var isRecording: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple.opacity(0.2).edgesIgnoringSafeArea(.all)
                VStack{
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        HStack{
                            NavigationLink( // to practice
                                destination: Practice(isShowPreviewVideo: $isShowPreviewVideo, isRecording: $isRecording),
                                label: {
                                    ZStack{
                                        Text("Practice")
                                            .font(.largeTitle)
                                            .fontWeight(.black)
                                            .foregroundColor(Color.orange)
                                            .frame(minWidth: 0, idealWidth: 300, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                                            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.orange.opacity(0.7), lineWidth: 15))
                                            .padding()
                                    }
                                })
                            
                            NavigationLink( // to create
                                destination: Create(isShowPreviewVideo: $isShowPreviewVideo, isRecording: $isRecording),
                                label: {
                                    ZStack{
                                        Text("Create")
                                            .font(.largeTitle)
                                            .fontWeight(.black)
                                            .foregroundColor(Color.orange)
                                            .frame(minWidth: 0, idealWidth: 300, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                                            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.orange.opacity(0.7), lineWidth: 15))
                                            .padding()
                                        
                                    }
                                })
                            
                            NavigationLink( // to instruction
                                destination: InstructionView(),
                                label: {
                                    ZStack{
                                        Text("Instruction")
                                            .font(.largeTitle)
                                            .fontWeight(.black)
                                            .foregroundColor(Color.orange)
                                            .frame(minWidth: 0, idealWidth: 300, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                                            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.orange.opacity(0.7), lineWidth: 15))
                                            .padding()
                                    }
                                })
                            Spacer()
                        }
                    })
                }
                //                .navigationTitle("Magic Drums").font(.subheadline)
                .toolbar(content: {
                    ToolbarItem(placement: .principal){
                        Text("Magic Drums")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(colorScheme == .light ? .black.opacity(0.7): .white.opacity(0.7))
                    }
                })
                .navigationBarItems(trailing: NavigationLink(
                                        destination: ARContentView()
                                            .environmentObject(placementSettings),
                                        label: {
                                            Image(systemName: "arkit")
                                                .resizable()
                                                .foregroundColor(Color.red)
                                                .frame(width: 25, height: 25)
                                        }))
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .edgesIgnoringSafeArea(.all)
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
