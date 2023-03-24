//
//  ContentView.swift
//  AZzeolMemo
//
//  Created by JEONGEUN KIM on 2023/03/17.
//

import SwiftUI

struct ContentView: View {
    @State var yesterDayList = YesterDayModel.list
    @State var beforeList = BeforeModel.list
    @State private var search: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                List {
                    Section{
                        HStack(spacing: 2) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundColor(.gray)
                            TextField("검색", text: $search)
                                .background(.clear)
                                .foregroundColor(.black)
                                .textFieldStyle(.plain)
                                .disableAutocorrection(true)
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                    .listRowBackground(Color.gray.opacity(0.2))
                    
                    Section() {
                        ForEach(yesterDayList) { list in
                            VStack(alignment: .leading, spacing: 5) {
                                Text("\(list.title)")
                                    .font(.system(size: 16, weight: .bold))
                                Text("\(list.subTitle)")
                                    .font(.system(size: 10))
                            }
                        }
                    } header: {
                        Text("어제")
                            .font(.system(size: 16, weight: .bold))
                    }
                    Section() {
                        ForEach(beforeList) { list in
                            VStack(alignment: .leading, spacing: 5) {
                                Text("\(list.title)")
                                    .font(.system(size: 16, weight: .bold))
                                Text("\(list.subTitle)")
                                    .font(.system(size: 10))
                            }
                        }
                    } header: {
                        Text("7일 전")
                            .font(.system(size: 16, weight: .bold))
                    }
                    
                }
                .listStyle(InsetGroupedListStyle())
                .textFieldStyle(.roundedBorder)
                .navigationTitle("메모")
                .navigationBarItems(leading: Button {}
                                    label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("폴더")
                    }.tint(.yellow)
                })
                .navigationBarItems(trailing: Button{}
                                    label: {
                    Image(systemName: "ellipsis.circle")
                        .tint(.yellow)
                })
                HStack() {
                    Spacer()
                    NavigationLink(destination: DetailView()) {
                        Image(systemName: "square.and.pencil")
                            .tint(.yellow)
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 5)
                    .tint(.yellow)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

