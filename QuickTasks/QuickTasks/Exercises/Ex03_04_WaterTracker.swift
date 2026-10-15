import SwiftUI

// Exercises 03 & 04 – @State, buttons, reset and SF Symbol labels
struct Ex03_04_WaterTracker: View {

    @State private var glasses = 0

    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Image(systemName: "drop.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.blue)

                Text("Water")
                    .font(.headline)

                Text("\(glasses)")
                    .font(.largeTitle)
                    .bold()

                Text("Glasses")
                    .font(.caption)

                Button {
                    glasses += 1
                } label: {
                    Label("Add Water", systemImage: "plus.circle.fill")
                }

                Button {
                    glasses = 0
                } label: {
                    Label("Reset", systemImage: "arrow.counterclockwise")
                }
            }
        }
    }
}

#Preview { Ex03_04_WaterTracker() }
