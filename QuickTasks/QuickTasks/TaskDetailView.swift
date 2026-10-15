import SwiftUI

// Part F – Task detail screen
struct TaskDetailView: View {

    let task: TaskItem

    var body: some View {

        ScrollView {
            VStack(spacing: 10) {

                Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                    .font(.largeTitle)
                    .foregroundStyle(task.completed ? .green : .gray)

                Text(task.title)
                    .font(.headline)
                    .multilineTextAlignment(.center)

                Text(task.completed ? "Completed" : "Pending")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                // Part G – Option D: priority on the detail view
                Label("Priority: \(task.priority.rawValue)", systemImage: task.priority.symbol)
                    .font(.caption)
            }
            .frame(maxWidth: .infinity)
        }
        .navigationTitle("Details")
    }
}

#Preview {
    NavigationStack {
        TaskDetailView(task: TaskItem(title: "Morning Walk", completed: true, priority: .high))
    }
}
