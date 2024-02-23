//
//  DetailViewModel.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-11-07.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var lesson: LessonLsitModel = LessonLsitModel()
    
    init(lesson: LessonLsitModel) {
        self.lesson = lesson
    }
}
