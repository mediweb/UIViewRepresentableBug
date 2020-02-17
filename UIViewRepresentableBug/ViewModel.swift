import Foundation
import Combine

class ViewModel: ObservableObject {
  var count = 0
  private var timer: Timer?

  init() {
    timer = Timer.scheduledTimer(
      timeInterval: 1.0,
      target: self,
      selector: #selector(countUp),
      userInfo: nil,
      repeats: true
    )
  }

  @objc private func countUp() {
    objectWillChange.send()
    count += 1
  }
}
