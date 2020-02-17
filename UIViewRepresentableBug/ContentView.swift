import SwiftUI

struct ContentView: View {
  @ObservedObject var viewModel: ViewModel = ViewModel()
  
  var body: some View {
    VStack {
      Text("Struct UIViewRepresentable").font(.title)
      StructUIViewRepresentable(viewModel: viewModel)
      Text("Final Class UIViewRepresentable").font(.title)
      FinalClassUIViewRepresentable(viewModel: viewModel)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
