Pod::Spec.new do |s|
s.name             = "DATAObjectIDs"
s.version          = "0.5.0"
s.summary          = "The fastest way to get a group of objectIDs and primary keys from Core Data"
s.homepage         = "https://github.com/3lvis/DATAObjectIDs"
s.license          = 'MIT'
s.author           = { "Elvis Nuñez" => "elvisnunez@me.com" }
s.source           = { git: "https://github.com/NSElvis/DATAObjectIDs.git", tag: s.version.to_s }
s.social_media_url = 'https://twitter.com/3lvis'
s.platform         = :ios, '7.0'
s.requires_arc     = true
s.source_files     = 'Source/**/*'
s.frameworks = 'CoreData'
end
