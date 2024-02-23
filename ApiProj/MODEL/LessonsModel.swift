//
//  LessonListModel.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-10-30.
//

import Foundation

struct LessonsModel: Decodable {
    var lessons: [LessonLsitModel]
}

struct LessonLsitModel: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var thumbnail: URL
    var video_url: URL
    
    init(id: Int, name: String, description: String, thumbnail: URL, video_url: URL) {
        self.id = id
        self.name = name
        self.description = description
        self.thumbnail = thumbnail
        self.video_url = video_url
    }
    
    init() {
        self.id = 0
        self.name = "Name"
        self.description = "Description"
        self.thumbnail = URL(string: "https://embed-ssl.wistia.com/deliveries/b57817b5b05c3e3129b7071eee83ecb7.jpg?image_crop_resized=1000x560")!
        self.video_url = URL(string: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4")!
    }
}
