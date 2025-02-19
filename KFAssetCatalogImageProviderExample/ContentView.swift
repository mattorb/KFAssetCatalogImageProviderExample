import SwiftUI
import Kingfisher
import KFAssetCatalogImageProvider

struct ContentView : View {
  var body: some View {
    VStack {
      Spacer()
      
      Text("Remote")
      KFImage(URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/logo.png")!)
        .placeholder({ _ in
          ProgressView()
        })
        .resizable()
        .scaledToFit()
      
      Spacer()
      
      Text("Local, no delay")
      KFImage(smartURL: URL(string: "asset-catalog://locallogo.jpg")!)
        .placeholder({ _ in
          ProgressView()
        })
        .resizable()
        .scaledToFit()
      
      Spacer()
      
      Text("Local with 3 seconds delay")
      KFImage(smartURL: URL(string: "asset-catalog://locallogo.jpg?delay=3")!)
        .placeholder({ _ in
          ProgressView()
        })
        .resizable()
        .scaledToFit()
      
      Spacer()
    }
  }
}

#Preview {
  ContentView()
}
