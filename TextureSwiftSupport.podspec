Pod::Spec.new do |s|
  s.name                  = "TextureSwiftSupport"
  s.version               = "1.0.1"
  s.summary               = "TextureSwiftSupport"
  s.homepage              = "https://github.com/sharekey/TextureSwiftSupport"
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.platform              = :ios, '13.0'
  s.authors               = 'Sharekey'
  s.source                = { :git => 
"https://github.com/sharekey/TextureSwiftSupport.git", :tag => s.version.to_s }

  s.requires_arc          = true

spec.swift_versions = ["5.1"]
  spec.dependency "Texture/Core", ">= 3"

  spec.default_subspecs = ["LayoutSpecBuilders", "Components", "Extensions", "Experiments"]

  spec.subspec "LayoutSpecBuilders" do |ss|
    ss.source_files = "Sources/LayoutSpecBuilders/**/*.swift"
  end

  spec.subspec "Components" do |ss|
    ss.source_files = "Sources/Components/**/*.swift"
    ss.dependency "TextureSwiftSupport/LayoutSpecBuilders"
    ss.dependency "Descriptors", ">= 0.2.1"
  end

  spec.subspec "Extensions" do |ss|
    ss.source_files = "Sources/Extensions/**/*.swift"
  end

  spec.subspec "Experiments" do |ss|
    ss.source_files = "Sources/Experiments/**/*.swift"
  end

end
