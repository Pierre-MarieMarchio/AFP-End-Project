import SwiftUI

struct HomeView: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var counter = 360
    @State var didYouKnow = didYouKnows.randomElement()!
    var body: some View {
        
        NavigationView {
            ZStack {
                CustomColor.backgroundColor
                    .ignoresSafeArea()
                Image("Analytics process")
                    .offset(y: 150)
                VStack {
                    Text("GreenDigitalApp")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(CustomColor.neonCyan)
                        .padding()
                        .padding(.bottom, 25.0)
                    
                    Text("LE SAVIEZ-VOUS ?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(CustomColor.boldOrange)
                    
                    Text(didYouKnow)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(CustomColor.neonCyan)
                        .multilineTextAlignment(.center)
                        .frame(width: 350, height: 160)
                        .background(Rectangle().fill(CustomColor.whiteOpacityPlus).cornerRadius(50))
                        .padding(.top)
                        .onReceive(timer) { _ in
                            if counter > 0 {
                                counter -= 1
                            } else {
                                self.didYouKnow = didYouKnows.randomElement()!
                                counter += 320
                            }
                            }

                    
                    
                    Spacer()
          
                    NavigationLink(destination: PersonalFootprintView(), label: {
                        ZStack {
                            
                            Rectangle()
                                .frame(width: 275, height: 80)
                                .cornerRadius(45)
                                .foregroundColor(CustomColor.paleYellow)
                            
                            Text("MON EMPREINTE")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.title2)
                        }
                    })
                        .offset(y: -110)
                    
                    NavigationLink(destination: GlobalFootprintView(), label: {
                    ZStack {
                            Rectangle()
                                .frame(width: 310, height: 80)
                                .cornerRadius(45)
                                .foregroundColor(CustomColor.paleYellow)
                            
                            Text("EMPREINTE GÉNÉRALE")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .font(.title2)
                        }
                    })
                    .offset(y: -80)
                    
                    
                    
                    
                    
                }
            }
        }
    }
    
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

