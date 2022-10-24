//
//  Media.swift
//  HopefullyNiceAudioPlayer
//
//  Created by Javier Heisecke on 2022-10-24.
//

import Foundation

typealias AudiosList = [Media]

class Media: ObservableObject {
    let id: Int
    let url: String
    
    init(id: Int, url: String) {
        self.id = id
        self.url = url
    }
    
    @Published var audioParameters = AudioParameters(currentTime: 0, duration: 0)
    
    struct AudioParameters {
        var playingRecording = false
        var currentTime: Double
        var duration: Double
    }
}

extension Media {
    static let someMedia = [
        Media(
            id: 198,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Hit-Harder-30-Sec-Intro-Preview.mp3"
        ),
        Media(
            id: 199,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Middle-East-Tension-Action-30-Sec-Preview.mp3"
        ),
        Media(
            id: 200,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Smooth-Deal-30-Sec-Preview.mp3"
        ),
        Media(
            id: 201,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Deep-Down-Your-Fears-30-Sec-Preview.mp3"
        ),
        Media(
            id: 203,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Happy-Panda-30-Sec-Preview.mp3"
        ),
        Media(
            id: 204,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Klezmer-Theme-30-Sec-Preview.mp3"
        ),
        Media(
            id: 205,
            url: "https://www.tunepocket.com/wp-main/uploads/TunePocket-Outside-The-Box-30-Sec-Preview.mp3"
        ),
    ]
}
