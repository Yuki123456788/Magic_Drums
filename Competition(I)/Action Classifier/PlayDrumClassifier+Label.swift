//
//  PlayDrumClassifier+Label.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/23.
//
//Abstract:
//Defines the app's knowledge of the model's class labels.

extension PlayDrumClassifier2_1 {
    /// Represents the app's knowledge of the Exercise Classifier model's labels.
    enum Label: String, CaseIterable {
        case BassDrum = "BassDrum"
        case SnareDrum = "SnareDrum"
        case FloorTom = "FloorTom"
        case TomTom1 = "TomTom1"
        case TomTom2 = "TomTom2"
        case HiHatH = "HiHatH"
        case HIHatF = "HIHatF"
        case CrashCymbal = "CrashCymbal"
        case RideCymbal = "RideCymbal"

        /// A negative class that represents irrelevant actions.
        case Other = "Other"

        /// Creates a label from a string.
        /// - Parameter label: The name of an action class.
        init(_ string: String) {
            guard let label = Label(rawValue: string) else {
                let typeName = String(reflecting: Label.self)
                fatalError("Add the `\(string)` label to the `\(typeName)` type.")
            }

            self = label
        }
    }
}
