

import SwiftUI

struct PersonalFootprintView: View {
    @State private var progress: CGFloat = 0
    
    
    private var image: String {
        let image: String
        
        switch progress {
        case 1...100:
            image = "person"
            
        default:
            image = "Mountain"
            
        }
        return image
        
    }
    private var explication: String {
        let explication: String
        
        switch progress {
        case 1...100:
            explication = "Paris-Sicile"
            
        default:
            explication = "What a wonderful world"
            
        }
        return explication
        
    }
    var body: some View {
        
        
        ZStack {
            CustomColor.backgroundColor
                .ignoresSafeArea()
            VStack {
                Text(explication)
                    .foregroundColor(CustomColor.boldOrange)
                    .font(.title)
                    .fontWeight(.semibold)
                
                
                Text("\(progress)kg")
                    .foregroundColor(CustomColor.boldOrange)
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                ZStack {
                    Image(image)
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Circle()
                    
                        .stroke(Color(white: 0.85), lineWidth: 5)
                    Circle()
                        .trim(to: progress/500-0.005)
                        .stroke(.green, lineWidth: 5)
                }
                
                
                
                
            } .padding(20)
        }
        
    }
}






struct PersonalFootprintView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalFootprintView()
    }
}
