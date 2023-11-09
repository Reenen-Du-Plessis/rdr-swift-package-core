import Foundation

public extension DateFormatter {
    static let yearMonthDayTime: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }()
    
    static let readableMonthDayYear: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, y"
        return formatter
    }()
}
