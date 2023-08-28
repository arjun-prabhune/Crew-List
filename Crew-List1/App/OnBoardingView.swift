//
//  OnBoardingView.swift
//  Crew-List1
//
//  Created by Arjun Prabhune on 8/25/23.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Properties
    
    
    var members: [Member] = membersData
    
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(members[0...1]) { item in
                CrewCardView(member: item)
            } //: LOOP
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(members: membersData)
    }
}
