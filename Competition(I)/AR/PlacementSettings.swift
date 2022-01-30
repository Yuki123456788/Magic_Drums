//
//  PlacementSettings.swift
//  Competition(I)
//
//  Created by 張宸 on 2021/7/20.
//


import SwiftUI
import RealityKit
import Combine

class PlacementSettings: ObservableObject {
    @Published var selectedModel: Model? {
        willSet(newValue){
            print("設定選取 Model: \(String(describing: newValue?.name))")
        }
    }
    @Published var confirmedModel: Model? {
        willSet(newValue) {
            guard let model = newValue else {
                print("清除確認 Model")
                return
            }
            print("設定確認 Model: \(model.name)")
        }
    }
    
    var sceneObserver: Cancellable?
    
}
