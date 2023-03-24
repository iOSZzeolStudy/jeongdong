//
//  Model.swift
//  AZzeolMemo
//
//  Created by JEONGEUN KIM on 2023/03/17.
//

import Foundation

struct YesterDayModel: Hashable, Identifiable {
    var id: UUID = UUID()
    let title: String
    let subTitle: String
}

extension YesterDayModel {
    static let list: [YesterDayModel] = [
        YesterDayModel(title: "오늘은 3월 17일!", subTitle: "SWIFT 재밌다아아앙"),
        YesterDayModel(title: "오늘 점심 닭갈비", subTitle: "역곡 맛집 춘천 닭갈비 맛도리~,~"),
        YesterDayModel(title: "후식은 바닐라라떼", subTitle: "중드보면서 바닐라 라떼 마시는 중")
    ]
}

struct BeforeModel: Hashable, Identifiable {
    var id: UUID = UUID()
    let title: String
    let subTitle: String
}

extension BeforeModel {
    static let list: [BeforeModel] = [
        BeforeModel(title: "통학 힘들다", subTitle: "나도 자취할래 .. 학교 가기 힘드뎌 .. "),
        BeforeModel(title: "새콤달콤 맛있다 .. ", subTitle: "새콤 달콤 딸기맛이 젤루 맛있다 .."),
        BeforeModel(title: "오늘 날씨 왜이렇게 좋앙 .. ", subTitle: "한강가자!!!!!!! ")
    ]
}
