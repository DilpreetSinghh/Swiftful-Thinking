//
//  Lec_DatePicker.swift
//  Mastering SwiftUI
//
//  Created by Dilpreet Singh on 09/03/24.
//

import SwiftUI

struct Lec_DatePicker: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from:DateComponents(year: 2003)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//            .datePickerStyle(
//                CompactDatePickerStyle()
//                //GraphicalDatePickerStyle()
//                //WheelDatePickerStyle()
//            )
        VStack{
            Text("Selected Date is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.caption)
            
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date, . hourAndMinute])
        }
    }
}

#Preview {
    Lec_DatePicker()
}
