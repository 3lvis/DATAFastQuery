Pod::Spec.new do |s|
s.name             = "NSManagedObject-ANDYObjectIDs"
s.version          = "0.1"
s.summary          = "A short description of NSManagedObject-ANDYObjectIDs."
s.description      = <<-DESC
An optional longer description of NSManagedObject-ANDYObjectIDs

* Markdown format.
* Don't worry about the indent, we strip it!
DESC
s.homepage         = "https://github.com/NSElvis/NSManagedObject-ANDYObjectIDs"
s.license          = 'MIT'
s.author           = { "Elvis Nuñez" => "hello@nselvis.com" }
s.source           = { git: "https://github.com/NSElvis/NSManagedObject-ANDYObjectIDs.git", tag: s.version.to_s }
s.social_media_url = 'https://twitter.com/NSElvis'

s.platform         = :ios, '7.0'
s.requires_arc     = true

s.source_files     = 'Source/**/*'

s.frameworks = 'CoreData'
end
