//
//  VideoPlayView.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-11-04.
//

import SwiftUI
import AVKit
import NVActivityIndicatorView

struct VideoPlayView: View {
    @ObservedObject var viewModel: VideoPlayViewModel
    var body: some View {
        VideoPlayer(player: viewModel.player)
            .onAppear {
                viewModel.player.play()
            }
            .onDisappear {
                viewModel.player.pause()
            }
    }
}

struct VideoPlayView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayView(viewModel: VideoPlayViewModel(lessons: LessonLsitModel()))
    }
}
