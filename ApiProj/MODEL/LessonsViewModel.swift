//
//  ContentViewModel.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-10-30.
//

import Foundation

class LessonsViewModel: ObservableObject {
    @Published var lessons: [LessonLsitModel] = []
    
    func getListLeson() async {
        let result = try? await ApiManeger().getList()
        
        if let info = result {
            lessons = info.lessons
        }
    }
}
