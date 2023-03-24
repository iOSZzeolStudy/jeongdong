//
//  SubView.swift
//  AZzeolMemo
//
//  Created by JEONGEUN KIM on 2023/03/17.
//

import SwiftUI

struct SubView: View {
    
    var model: YesterDayModel

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(model.title)")
                .font(.system(size: 16, weight: .bold))
            Text("\(model.subTitle)")
                .font(.system(size: 10))
        }
    }
}


struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView(model: YesterDayModel.list[1])
    }
}
