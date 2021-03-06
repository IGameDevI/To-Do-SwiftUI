//
//  ItemRowView.swift
//  Todo
//
//  Created by Kadir on 22.07.2020.
//  Copyright © 2020 Kadir. All rights reserved.
//

import SwiftUI



struct ItemRowView: View {
    var item: String
    var createAt: String = Date().getFormattedDate(format: "MMM d, h:mm a")
    var priority: String = ""
    
    
    
    
    var body: some View {
        HStack{
            Text(priority)
                .font(.headline)
            VStack(alignment:.leading){
                Text(item)
                    .font(.headline)
                Text("\(createAt)")
                    .font(.custom("Ariel", size: 10))
                .lineLimit(3)
            }
        }
    }
}

extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}

//struct ItemRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemRowView()
//    }
//}
