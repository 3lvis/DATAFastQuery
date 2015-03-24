Pod::Spec.new do |s|
s.name             = "NSManagedObject-ANDYObjectIDs"
s.version          = "0.4"
s.summary          = "The fastest way to get a group of objectIDs and primary keys from Core Data"
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
