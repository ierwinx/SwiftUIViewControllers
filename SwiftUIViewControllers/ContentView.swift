import SwiftUI

struct ContentView: View {
    
    @State var bShow = false
    
    var body: some View {
        VStack {
            
            MiVistaBridge()
                .frame(height: 200)
            
            Spacer()
                .frame(height: 100)
            
            Button("Mostar") {
                bShow.toggle()
            }
            .padding(15)
            .padding([.trailing, .leading], 40)
            .background(.red)
            .tint(.white)
            
            .fullScreenCover(isPresented: $bShow) {
                UKitBridge()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
