//
//  Menu.swift
//  HopefullyNiceAudioPlayer
//
//  Created by Javier Heisecke on 2022-10-24.
//

import SwiftUI

struct Menu: View {
    
    @State var audios: AudiosList = Media.someMedia
    @State var audioPlaying: Media?
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 70) {
                    ForEach(0...audios.count - 1, id: \.self) { index in
                        let audio = audios[index]
                        VStack(alignment: .leading) {
                            Text("Audio: \(audio.id)")
                            AudioView(audio: audio)
                        }
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 30)
            }
        }
        .background(.gray.opacity(0.4))
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu(audios: Media.someMedia)
    }
}

