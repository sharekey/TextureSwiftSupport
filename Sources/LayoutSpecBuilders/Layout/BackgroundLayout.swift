
///
/// - Author: TetureSwiftSupport
public struct BackgroundLayout<BackgroundContnt, Content> : _ASLayoutElementType where BackgroundContnt : _ASLayoutElementType, Content : _ASLayoutElementType {

  public let content: Content
  public let background: BackgroundContnt

  public init(content: () -> Content, background: () -> BackgroundContnt) {
    self.content = content()
    self.background = background()
  }

  public func tss_make() -> [ASLayoutElement] {
    return [
      ASBackgroundLayoutSpec(
        child: content.tss_make().first ?? ASDisplayNode(),
        background: background.tss_make().first ?? ASLayoutSpec()
      )
    ]
  }

}
