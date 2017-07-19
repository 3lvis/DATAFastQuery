Pod::Spec.new do |s|
s.name             = "DATAFastQuery"
s.version          = "0.8.0"
s.summary          = "The fastest way to get a group of objectIDs and primary keys from Core Data"
s.homepage         = "https://github.com/3lvis/DATAFastQuery"
s.license          = 'MIT'
s.author           = { "Elvis Nuñez" => "elvisnunez@me.com" }
s.source           = { git: "https://github.com/3lvis/DATAFastQuery.git", tag: s.version.to_s }
s.social_media_url = 'https://twitter.com/3lvis'
s.ios.deployment_target = '8.0'
s.osx.deployment_target = '10.9'
s.watchos.deployment_target = '2.0'
s.tvos.deployment_target = '9.0'
s.requires_arc     = true
s.source_files     = 'Sources/**/*'
s.frameworks = 'CoreData'
end
