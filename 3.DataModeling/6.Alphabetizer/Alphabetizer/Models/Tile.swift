import Foundation

@Observable
class Tile: Identifiable {
    let id = UUID()

    var word: String
    var position: CGPoint = .zero
    // When flipped, show a checkmark instead of the word and icon
    var flipped = false

    init(word: String) {
        self.word = word
    }

    var icon: String {
        // FIXME: Lookup an icon matching the word
        Vocabulary.icons[word] ?? "🤷"
    }
}

extension Tile: Equatable {
    static func == (lhs: Tile, rhs: Tile) -> Bool {
        lhs.id == rhs.id

    }
}
