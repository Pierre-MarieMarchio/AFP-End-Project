import SwiftUI

struct ChangePictureView: View {
    @Binding var showChangePicture: Bool
    @Binding var profilePicture: String
    let data = ["Monkey", "person"]
       let columns = [
           GridItem(.fixed(150)),
           GridItem(.fixed(150)),
       ]

    var body: some View {
        NavigationStack {
            ZStack {
                VisualEffectView(effect: UIBlurEffect(style: .dark))
                    .ignoresSafeArea(.all)
                
                Rectangle()
                    .frame(width: 300, height: 650)
                    .foregroundColor(CustomColor.whiteOpacityPlus)
                    .cornerRadius(20)
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 45) {
                        ForEach(data, id: \.self) { item in
                            Button(action: {self.showChangePicture = false; self.profilePicture = item}, label: {
                                Image(item)
                                    .resizable()
                                    .frame(width: 90, height: 90)
                                    .clipShape(Circle())
                            })
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight: 600)
            }
        }
    }
}
