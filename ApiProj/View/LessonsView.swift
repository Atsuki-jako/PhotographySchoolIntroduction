//
//  ContentView.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-10-30.
//

import SwiftUI

struct LessonsView: View {
    @StateObject var contentViewModel = LessonsViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                List(contentViewModel.lessons) { lesson in
                    NavigationLink {
                        DetailView(viewModel: DetailViewModel(lesson: lesson))
                    }label: {
                        CustomCellView(lessons: lesson)
                    }
                }
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("Lessons")
        }
        .onAppear {
            Task {
                await contentViewModel.getListLeson()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView()

    }
}
