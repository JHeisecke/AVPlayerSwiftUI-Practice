//
//  AudioView.swift
//  HopefullyNiceAudioPlayer
//
//  Created by Javier Heisecke on 2022-10-24.
//

import SwiftUI

struct AudioView: View {
    
    @ObservedObject var audio: Media
    @ObservedObject var player: AudioPlayer
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.white)
            .shadow(radius: 15)
            .frame(height: 60)
        .overlay {
            HStack {
                Spacer()
                Image(systemName: audio.audioParameters.playingRecording ? "pause.fill" : "play.fill")
                    .resizable()
                    .frame(width: 15, height: 20)
                    .padding(.horizontal)
                    .background {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                            .shadow(radius: 5)
                    }
                    .onTapGesture {
                        audio.audioParameters.playingRecording.toggle()
                    }
                Spacer()
                RoundedRectangle(cornerRadius: 50)
                    .frame(height: 8)
                    .foregroundColor(.gray.opacity(0.8))
                    .overlay(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.black)
                            .frame(width: 20)
                    }
                    .padding(.trailing)
            }
        }
    }

}

struct AudioView_Previews: PreviewProvider {
    static var previews: some View {
        AudioView(audio: Media.someMedia[0])
            .padding(.horizontal)
    }
}
