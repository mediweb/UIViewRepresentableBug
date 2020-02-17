import SwiftUI
import UIKit

final class FinalClassUIViewRepresentable: UIViewRepresentable {
  typealias UIViewType = UILabel
  var viewModel: ViewModel

  func makeUIView(context: UIViewRepresentableContext<FinalClassUIViewRepresentable>) -> UILabel {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 100.0)
    label.textAlignment = .center
    return label
  }

  func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<FinalClassUIViewRepresentable>) {
    print("updateUIView: \(String(describing: type(of: self)))")
    uiView.text = "\(viewModel.count)"
  }

  init(viewModel: ViewModel) {
    self.viewModel = viewModel
  }
}
