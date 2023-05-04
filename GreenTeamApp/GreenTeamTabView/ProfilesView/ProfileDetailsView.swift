import SwiftUI

class Username: ObservableObject {
    @Published var username = "Pseudo"
}
struct ProfileDetailsView: View {
    
    @AppStorage("Pseudo") var pseudo: String = "Pseudo"
    
    @AppStorage("ProfilePicture") var profilePicture: String = "Monkey"

    @State var textField: Bool = false
    
    @State var showChangePicture: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                CustomColor.backgroundColor
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 290, height: 200)
                            .overlay(LinearGradient(colors: [CustomColor.dullCyan, CustomColor.whiteOpacityPlus,  CustomColor.dullCyan], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .cornerRadius(40)
                          
                        Rectangle()
                            .frame(width: 285, height: 195)
                            .overlay(LinearGradient(colors: [CustomColor.boldOrange, CustomColor.paleYellow], startPoint: .bottomLeading, endPoint: .topTrailing))
                            .cornerRadius(40)
                            .shadow(radius: 5)
                     
                       
                       
                        
                        Button(action: { self.showChangePicture = true}, label: {
                            Image(profilePicture)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        })
                        .offset(y: -30)
                        
                        HStack {
                            
                            if textField {
                                FirstResponderTextField(text: $pseudo, placeholder: pseudo)
                                    .frame(width: 275, height: 20)
                                    .font(.title)
                                    .padding()
                                    .background(Color.white)
                                Button(action: { textField = false }, label: { Image(systemName: "checkmark.circle.fill")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                    
                                })
                            } else {
                                Text(pseudo)
                                    .font(.title)
                                    .foregroundColor(.white)
                                Button(action: { textField = true }, label: { Image(systemName: "pencil")
                                        .font(.title)
                                        .foregroundColor(.white)
                                })  }
                        }
                        .offset(y: 60)
                    }
                   // RectangleWhiteOpacity()
                   // RectangleWhiteOpacity()
                    
                    Image("EarthPeople")
                        .resizable()
                        .frame(width: 500, height: 500)
                   
                    }
            
                if showChangePicture == true {
                    ZStack {
                      
                        ChangePictureView(showChangePicture: $showChangePicture, profilePicture: $profilePicture)
                    }
                }
           
                }
            }
        
    
            
        
  
        }
    }

struct CompleteProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailsView()
    }
}
