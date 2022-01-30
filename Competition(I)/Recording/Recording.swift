//
//  Recording.swift
//  Competition(I)
//
//  Created by 張宸 on 2021/7/24.
//

import SwiftUI
import ReplayKit

struct RecordingView: View {
    @Binding var isRecording: Bool
    @State var rp: RPPreviewView!
    @Binding var isShowPreviewVideo: Bool
    let recorder = RPScreenRecorder.shared()
    
    var body: some View {
        Button(action: {
            if !isRecording {
                self.startRecord()
            } else {
                self.stopRecord()
            }
        }){
            Image(systemName: isRecording ? "stop.circle" :"record.circle")
                .resizable()
                .foregroundColor(Color.red)
                .frame(width: 25, height: 25)
        }
        .sheet(isPresented: $isShowPreviewVideo) {
             self.rp
        }
    }
    private func startRecord() {
       guard recorder.isAvailable else { return }
       if !recorder.isRecording {
          recorder.startRecording { (error) in
             guard error == nil else { return }
             
             print("Started Recording Successfully")
             self.isRecording = true
          }
       }
    }
    private func stopRecord() {
       recorder.stopRecording { (preview, error) in
          print("Stopped recording")
          self.isRecording = false
          
          guard let preview = preview else { return }
          self.rp = RPPreviewView(rpPreviewViewController: preview, isShow: self.$isShowPreviewVideo)
          self.isShowPreviewVideo = true
       }
    }
}

struct RPPreviewView: UIViewControllerRepresentable {
    let rpPreviewViewController: RPPreviewViewController
    @Binding var isShow: Bool
    
    func makeCoordinator() -> Coordinator {
          Coordinator(self)
       }

    func makeUIViewController(context: Context) -> RPPreviewViewController {
        rpPreviewViewController.previewControllerDelegate = context.coordinator
        return rpPreviewViewController
    }
    func updateUIViewController(_ uiViewController: RPPreviewViewController, context: Context) {
        
    }
    
    class Coordinator: NSObject, RPPreviewViewControllerDelegate {
        var parent: RPPreviewView
        
        init(_ parent: RPPreviewView) {
            self.parent = parent
        }
        func previewControllerDidFinish(_ previewController: RPPreviewViewController) {
            parent.isShow = false
        }
    }
}

