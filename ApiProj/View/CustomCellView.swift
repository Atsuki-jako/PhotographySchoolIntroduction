//
//  CustomCellView.swift
//  ApiProj
//
//  Created by Atsuki Jako on 2023-10-30.
//

import SwiftUI

struct CustomCellView: View {
    var lessons: LessonLsitModel
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: lessons.thumbnail, scale: 10)
                    .padding(.leading, 5)
                Spacer().frame(width: 10)
                VStack(alignment: .leading) {
                    Text(lessons.name)
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                    Text(lessons.description)
                        .font(.system(size: 10, weight: .semibold, design: .rounded))
                }
                .frame(maxWidth: .infinity)
            }
        }
        .frame(height: 80)
        .frame(maxWidth: .infinity)
    }
}

struct CustomCellView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCellView(lessons: LessonLsitModel())
    }
}
