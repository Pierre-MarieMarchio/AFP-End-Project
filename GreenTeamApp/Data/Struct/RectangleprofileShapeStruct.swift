
import SwiftUI


struct RectangleWhiteOpacity: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 75)
                .foregroundColor(Color.white)
            
                .cornerRadius(20)
                .padding()
            Rectangle()
                .frame(width: 345, height: 70)
                .foregroundColor(CustomColor.backgroundColor)
            
                .cornerRadius(20)
                .padding()
            Divider()
        }
    }
}

    
