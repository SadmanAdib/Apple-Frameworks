//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Sadman Adib on 18/7/22.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework = MockData.sampleFramework
    
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                Button{
                    print("cross pressed")
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print("button pressed")
            } label: {
                Text("Learn more")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
           
            
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}