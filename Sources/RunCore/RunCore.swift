import Foundation

public struct CategoryID: Hashable, Codable, Sendable {
    public let rawValue: String
    public init(_ rawValue: String) { self.rawValue = rawValue }
}

public protocol RunCategory: Sendable {
    static var id: CategoryID { get }
    static var displayName: String { get }
    static var glyph: String { get }
}

public actor CategoryRegistry {
    public static let shared = CategoryRegistry()
    private var registered: [CategoryID: any RunCategory.Type] = [:]

    public func register(_ category: any RunCategory.Type) {
        registered[category.id] = category
    }

    public func all() -> [any RunCategory.Type] {
        Array(registered.values)
    }
}

public struct Entry: Identifiable, Codable, Sendable {
    public let id: UUID
    public let categoryID: CategoryID
    public var label: String
    public var payload: [String: String]

    public init(id: UUID = UUID(), categoryID: CategoryID, label: String, payload: [String: String] = [:]) {
        self.id = id
        self.categoryID = categoryID
        self.label = label
        self.payload = payload
    }
}
