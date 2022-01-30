//
//  ARContentView.swift
//  Competition(I)
//
//  Created by 張宸 on 2021/7/20.
//

import SwiftUI
import RealityKit

struct ARContentView: View {
    
    @EnvironmentObject var placementSettings: PlacementSettings
    @State private var showBrowse: Bool = false
    var body: some View {
        
        ZStack(alignment: .bottom){
            
            ARViewContainer()
            
            if self.placementSettings.selectedModel == nil {
                ControlView(showBrowse: $showBrowse)
            }else{
                PlacementView()
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}



struct ARViewContainer: UIViewRepresentable {
    @EnvironmentObject var placementSettings: PlacementSettings
    func makeUIView(context: Context) -> CustomARView {
        
        let arView = CustomARView(frame: .zero)
        
        self.placementSettings.sceneObserver = arView.scene.subscribe(to: SceneEvents.Update.self, { (event) in
            
            self.updateScene(for: arView)
            
        })
        
        return arView
    }
    func updateUIView(_ uiView: CustomARView, context: Context) {}
    
    private func updateScene(for arView: CustomARView) {
        arView.focusEntity?.isEnabled = self.placementSettings.selectedModel != nil
        if let confirmedModel = self.placementSettings.confirmedModel, let modelEntity = confirmedModel.modelEntity {
            
            self.place(modelEntity, in: arView)
            
            self.placementSettings.confirmedModel = nil
        }
    }
    
    
    
    private func place(_ modelEntity: ModelEntity, in arView: ARView) {
        let clonedEntity = modelEntity.clone(recursive: true)
        
        clonedEntity.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: clonedEntity)
        
        let anchorEntity = AnchorEntity(plane: .any)
        anchorEntity.addChild(clonedEntity)
        
        arView.scene.addAnchor(anchorEntity)
        
        print("新增 modelEntity 到 scene")
        
    }
}

//struct ARContentView_Previews: PreviewProvider {
//    @Binding var isClose: Bool
//    var previews: some View {
//        ARContentView(isClose: $isClose)
//            .environmentObject(PlacementSettings())
//    }
//}

