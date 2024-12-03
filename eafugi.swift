import SwiftUI

// Assuming InsettableShape is defined similarly to Shape with additional inset functionality
protocol InsettableShape: Shape {
    func inset(by amount: CGFloat) -> Self
}

/// Draws a shape with the specified insets.
/// - Parameters:
///   - shape: An instance of a type that conforms to ``InsettableShape``
///   - insets: The amount by which to inset the shape.
func drawInsetShape<S: InsettableShape>(shape: S, insets: CGFloat) -> some View {
    shape
        .inset(by: insets)
        .stroke(lineWidth: 2)
}
