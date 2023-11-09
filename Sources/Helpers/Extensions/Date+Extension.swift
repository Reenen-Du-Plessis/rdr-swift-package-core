import Foundation

public extension Date {
    func timeDifferenceSinceNow() -> String? {
        if let yearsText = humanReadableYearsSinceNow() {
            return yearsText
        } else if let monthsText = humanReadableMonthsSinceNow() {
            return monthsText
        } else if let weeksText = humanReadableWeeksSinceNow() {
            return weeksText
        } else if let daysText = humanReadableDaysSinceNow() {
            return daysText
        }

        return nil
    }

    func humanReadableYearsSinceNow() -> String? {
        let components = componentsSinceNow()

        if let years = components.year,
        years > 0 {
            if years == 1 {
                return "\(years) year ago"
            } else {
                return "\(years) years ago"
            }
        }

        return nil
    }

    func humanReadableMonthsSinceNow() -> String? {
        let components = componentsSinceNow()

        if let month = components.month,
           month > 0 {
            if month == 1 {
                return "\(month) month ago"
            } else {
                return "\(month) months ago"
            }
        }

        return nil
    }

    func humanReadableWeeksSinceNow() -> String? {
        let components = componentsSinceNow()

        if let weeks = components.weekOfMonth,
           weeks > 0 {
            if weeks == 1 {
                return "\(weeks) week ago"
            } else {
                return "\(weeks) weeks ago"
            }
        }

        return nil
    }

    func humanReadableDaysSinceNow() -> String? {
        let components = componentsSinceNow()
        guard let days = components.day else { return nil }

        if days == 0 {
            return "today"
        } else if days == 1 {
            return "yesterday"
        } else {
            return "\(days) days ago"
        }
    }
    
    private func componentsSinceNow() -> DateComponents {
        let calendar = Calendar.current

        return calendar.dateComponents([.year, .month, .weekOfMonth, .day], from: self, to: Date.now)
    }
}
