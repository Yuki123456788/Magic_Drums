//
//  playSound.swift
//  Competition(I)
//
//  Created by 許友齊 on 2021/7/19.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER
//var audioPlayer: AVAudioPlayer?
//
//func playSound(sound: String, type: String) {
//    if let path = Bundle.main.path(forResource: sound, ofType: type) {
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//            audioPlayer?.play()
//        } catch {
//            print("Could not find and play the sound file. ")
//        }
//    }
//}

var audioPlayerBassDrum: AVAudioPlayer?
var audioPlayerTomTom: AVAudioPlayer?
var audioPlayerHiHatH: AVAudioPlayer?
var audioPlayerHiHatF: AVAudioPlayer?
var audioPlayerCrashCymbal: AVAudioPlayer?
var audioPlayerRideCymbal: AVAudioPlayer?
var audioPlayerSnareDrum: AVAudioPlayer?
var audioPlayerFloorTom: AVAudioPlayer?

func playSoundBassDrum(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerBassDrum = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerBassDrum?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundTomTom(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerTomTom = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerTomTom?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundHiHatH(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerHiHatH = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerHiHatH?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundHiHatF(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerHiHatF = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerHiHatF?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundCrashCymbal(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerCrashCymbal = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerCrashCymbal?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundRideCymbal(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerRideCymbal = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerRideCymbal?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundSnareDrum(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerSnareDrum = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerSnareDrum?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}

func playSoundFloorTom(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayerFloorTom = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayerFloorTom?.play()
        } catch {
            print("Could not find and play the sound file. ")
        }
    }
}


