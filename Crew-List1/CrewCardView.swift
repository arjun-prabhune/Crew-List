//
//  CrewCardView.swift
//  Crew-List1
//
//  Created by Arjun Prabhune on 8/25/23.
//

import SwiftUI

struct CrewCardView: View {
    
    // MARK: - Properties

    var member: Member

    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                // MARK: - Image
                Image(member.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 275, height: 275)
                
                // MARK: - TITLE
                Text(member.name)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // MARK: - Description
                Text(member.description)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth:  480)
                    
                    
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: member.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct CrewCardView_Previews: PreviewProvider {
    static var previews: some View {
        CrewCardView(member: membersData[0])
    }
}
