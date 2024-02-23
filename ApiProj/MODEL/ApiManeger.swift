//
//  ApiManeger.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-10-30.
//

import Foundation

struct ApiManeger {
    private func getUrlRequest() -> URLRequest{
        let url = URL.init(string: "https://iphonephotographyschool.com/test-api/lessons")!
        
        var urlReq = URLRequest(url: url)
        urlReq.timeoutInterval = 10
        urlReq.httpMethod = "GET"
        urlReq.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        return urlReq
    }
    
    func getList() async throws ->  LessonsModel?{

        do {
            let (data, _) = try await URLSession.shared.data(for: self.getUrlRequest())
            //converting data to LessonListModel -> [LessonModel]
            let result = LessonListParser().parse(data: data)
            return result
        }catch let error {
            throw(error)
        }
        
    }
}


class LessonListParser {
    
    func parse(data: Data) -> LessonsModel? {
        
        let decoder = JSONDecoder()
        
        let result = try? decoder.decode(LessonsModel.self, from: data)
        
        return result
    }
}
