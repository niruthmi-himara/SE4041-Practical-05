import SwiftUI

// Final Practical Task – Quick Tasks
struct ContentView: View {

    // Part B – Initial tasks stored with @State
    @State private var tasks = [
        TaskItem(title: "Morning Walk", completed: true,  priority: .medium),
        TaskItem(title: "Drink Water",  completed: false, priority: .high),
        TaskItem(title: "Read Notes",   completed: false, priority: .high),
        TaskItem(title: "Call Home",    completed: true,  priority: .low)
    ]

    // Part E – Completion count using filter
    private var completedCount: Int {
        tasks.filter { $0.completed }.count
    }

    private var progressPercent: Int {
        tasks.isEmpty ? 0 : completedCount * 100 / tasks.count
    }

    var body: some View {

        // Part C – Main screen
        NavigationStack {

            VStack(spacing: 4) {

                Text("\(completedCount) / \(tasks.count) Completed")
                    .font(.caption)
                    .bold()

                ProgressView(value: Double(completedCount), total: Double(tasks.count))
                    .tint(.green)
                    .padding(.horizontal)

                List {
                    ForEach(tasks.indices, id: \.self) { index in

                        Section {
                            // Part D – Tap to toggle completion
                            Button {
                                tasks[index].completed.toggle()
                            } label: {
                                HStack {
                                    Image(systemName: tasks[index].completed
                                          ? "checkmark.circle.fill"
                                          : "circle")
                                        .foregroundStyle(tasks[index].completed ? .green : .gray)

                                    Text(tasks[index].title)
                                        .strikethrough(tasks[index].completed)

                                    Spacer()
                                }
                            }

                            // Part F – Separate row that opens the details
                            NavigationLink {
                                TaskDetailView(task: tasks[index])
                            } label: {
                                Label("Details", systemImage: "info.circle")
                                    .font(.caption)
                            }
                        }
                    }

                    // Extra – Reset all tasks
                    Section {
                        Button(role: .destructive) {
                            for index in tasks.indices {
                                tasks[index].completed = false
                            }
                        } label: {
                            Label("Reset Tasks", systemImage: "arrow.counterclockwise")
                        }
                    }
                }
            }
            .navigationTitle("Quick Tasks")
        }
    }
}

#Preview {
    ContentView()
}
