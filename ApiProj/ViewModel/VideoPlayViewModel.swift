//
//  VideoPlayViewModel.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-11-07.
//

import Foundation
import AVKit

class VideoPlayViewModel: ObservableObject {
    @Published var player = AVPlayer()
    
    init(lessons: LessonLsitModel) {
        self.player = AVPlayer(url: lessons.video_url)
    }
}
