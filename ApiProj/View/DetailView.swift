//
//  DetailView.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-10-31.
//
import SwiftUI

struct DetailView: View {
    @ObservedObject var viewModel: DetailViewModel
    var body: some View {
        NavigationStack {
            VStack(spacing: 60) {
                ZStack {
                    AsyncImage(url: viewModel.lesson.thumbnail, scale: 2.5)
                    NavigationLink {
                        VideoPlayView(viewModel: VideoPlayViewModel(lessons: viewModel.lesson))
                    }label: {
                        Image(systemName: "play.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
                VStack(alignment: .leading, spacing: 20) {
                    Text(viewModel.lesson.name)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    Text(viewModel.lesson.description)
                        .font(.system(size: 15, weight: .regular, design: .rounded))
                }
                HStack {
                    Spacer()

                    Spacer()
                }
                .navigationTitle("Lessons Detail")
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
        }
    }
    
    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView(viewModel: DetailViewModel(lesson: LessonLsitModel()))
        }
    }
}
