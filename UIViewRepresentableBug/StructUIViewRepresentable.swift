import SwiftUI
import UIKit

struct StructUIViewRepresentable: UIViewRepresentable {
  typealias UIViewType = UILabel
  var viewModel: ViewModel

  func makeUIView(context: UIViewRepresentableContext<StructUIViewRepresentable>) -> UILabel {
    let label = UILabel()
    label.font = UIFont.boldSystemFont(ofSize: 100.0)
    label.textAlignment = .center
    return label
  }

  func updateUIView(_ uiView: UILabel, context: UIViewRepresentableContext<StructUIViewRepresentable>) {
    print("updateUIView: \(String(describing: type(of: self)))")
    uiView.text = "\(viewModel.count)"
  }
}
