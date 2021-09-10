//
//  NotficationBar.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/08/30.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button(action: {
            showNotificationList = true
        }, label: {
            HStack {
                Image(systemName: "bell")
                Text("Notification")
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
            }
        })
        .foregroundColor(.white)
        .padding()
    }
}

struct NotficationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
