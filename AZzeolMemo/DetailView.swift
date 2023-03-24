//
//  DetailView.swift
//  AZzeolMemo
//
//  Created by JEONGEUN KIM on 2023/03/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var content: String = ""
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            VStack {
                HStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .imageScale(.large)
                        Text("메모")
                    })
                    .padding(.leading, 10)
                    .accentColor(.white)
                    Spacer()
                    Button(action: {
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                            .imageScale(.large)
                    })
                    .tint(.gray.opacity(0.2))
                    .padding(.trailing, 15)
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "ellipsis.circle")
                            .imageScale(.large)
                    })
                    .padding(.trailing, 5)
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("완료")
                    }).padding(.trailing, 10)
                }
                .tint(.yellow)
                TextEditor(text: $content)
                    .padding()
                    .foregroundColor(Color.black)
                    .font(.system(size: 20,weight: .regular))
                    .lineSpacing(5)
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
