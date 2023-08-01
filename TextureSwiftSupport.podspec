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
  s.swift_versions = ['5']
  s.module_name  = 'TextureSwiftSupport'
  s.header_dir   = 'TextureSwiftSupport'

  s.source_files          = 'Sources/**/*.{h,m,swift}'
  s.public_header_files   = 'Sources/*.h'
end
