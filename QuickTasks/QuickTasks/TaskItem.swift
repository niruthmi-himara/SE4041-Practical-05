import Foundation

// Part G – Option D: Priority enum
enum Priority: String {
    case high = "High"
    case medium = "Medium"
    case low = "Low"

    var symbol: String {
        switch self {
        case .high:   return "exclamationmark.3"
        case .medium: return "exclamationmark.2"
        case .low:    return "exclamationmark"
        }
    }
}

// Part A – Task model
struct TaskItem: Identifiable {

    let id = UUID()

    var title: String
    var completed: Bool
    var priority: Priority = .medium
}
