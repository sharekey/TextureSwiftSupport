///
/// - Author: TetureSwiftSupport
public struct ZStackLayout<Content> : _ASLayoutElementType where Content : _ASLayoutElementType {

  public let children: Content

  public init(
    @ASLayoutSpecBuilder content: () -> Content
  ) {
    self.children = content()
  }

  public func tss_make() -> [ASLayoutElement] {
    guard !children.tss_make().isEmpty else { return [] }

    return [
      ASWrapperLayoutSpec(layoutElements: children.tss_make())
    ]
  }
}

