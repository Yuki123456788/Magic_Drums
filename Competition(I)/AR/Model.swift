//
//  Model.swift
//  Competition(I)
//
//  Created by 張宸 on 2021/7/20.
//

import SwiftUI
import RealityKit
import Combine

enum ModelCategory: CaseIterable {
    case twoDrums
    case threeDrums
    case fiveDrums
    case fullDrums
    var label: String {
        get {
            switch self {
            case .twoDrums:
                return "二鼓"
            case .threeDrums:
                return "三鼓"
            case .fiveDrums:
                return "五鼓"
            case .fullDrums:
                return "完整"
            }
        }
    }
}

class Model {
    var name: String
    var category: ModelCategory
    var thumbnail: UIImage
    var modelEntity: ModelEntity?
    var scaleCompensation: Float
    
    private var cancellable: AnyCancellable?
    
    init(name: String, category: ModelCategory, scaleCompensation: Float = 1.0){
        self.name = name
        self.category = category
        self.thumbnail = UIImage(named: name) ?? UIImage(systemName: "photo")!
        self.scaleCompensation = scaleCompensation
    }
    
    func asyncLoadModelEntity(){
        let filename = self.name + ".usdz"
        self.cancellable = ModelEntity.loadModelAsync(named: filename)
            .sink(receiveCompletion: { loadCompletion in
                switch loadCompletion {
                case.failure(let error): print("無法讀取 \(filename) modelEntity, Error: \(error.localizedDescription)")
                case.finished: break;
                }
            }, receiveValue: { modelEntity in
                self.modelEntity = modelEntity
                self.modelEntity?.scale += self.scaleCompensation
                
                print("\(self.name) modelEntity 成功讀取")
            })
    }
    
}

struct Models {
    var all: [Model] = []
    
    init() {
        let twoDrumModel = Model(name: "twoDrums", category: .twoDrums)
        let threeDrumModel = Model(name: "threeDrums", category: .threeDrums)
        let fiveDrumModel = Model(name: "fiveDrums", category: .fiveDrums)
        let fullDrumModel = Model(name: "fullDrums", category: .fullDrums)
        
        self.all += [twoDrumModel, threeDrumModel, fiveDrumModel, fullDrumModel]
    }
    
    func get(category: ModelCategory) -> [Model] {
        return all.filter( {$0.category == category} )
    }
}
