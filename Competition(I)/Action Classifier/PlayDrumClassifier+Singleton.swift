//
//  PlayDrumClassifier+Singleton.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/23.
//
//Abstract:
//Creates a common instance of the Exercise Classifier.
// The app only uses one instance anyway and using a static property initializes
// the model at launch instead of when the the main view loads.

import CoreML

extension PlayDrumClassifier2_1 {
    /// Creates a shared Exercise Classifier instance for the app at launch.
    static let shared: PlayDrumClassifier2_1 = {
        // Use a default model configuration.
        let defaultConfig = MLModelConfiguration()

        // Create an Exercise Classifier instance.
        guard let playDrumClassifier = try? PlayDrumClassifier2_1(configuration: defaultConfig) else {
            // The app requires the action classifier to function.
            fatalError("Exercise Classifier failed to initialize.")
        }

        // Ensure the Exercise Classifier.Label cases match the model's classes.
        playDrumClassifier.checkLabels()

        return playDrumClassifier
    }()
}
