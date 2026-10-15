import SwiftUI

// Exercise 01 – Your First Watch Interface
struct Ex01_FirstWatchView: View {
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "applewatch")
                .font(.title)
            Text("SE4041")
                .font(.headline)
                .bold()
            Text("watchOS")
                .font(.caption)
        }
    }
}

#Preview { Ex01_FirstWatchView() }
