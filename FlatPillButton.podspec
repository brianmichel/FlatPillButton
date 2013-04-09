Pod::Spec.new do |s|
  s.name         = "FlatPillButton"
  s.version      = "1.0.0"
  s.summary      = "As I'm sure everyone is well versed in the awesomeness that is Letterpress the app, if you're not, go download it here. Basically I fell in love with the super simple flat buttons and wanted to make something that people could use that was a little customizable. It looks pretty close in my opinion, but let me know if you have any problems."
  s.homepage     = "https://github.com/brianmichel/FlatPillButton"
  s.license      = 'MIT (example)'
  s.author       = { "Brian Michel" => "brian.michel@gmail.com" }
  s.source       = { :git => "git://github.com/brianmichel/FlatPillButton.git", :commit => "65d7a9bdc6767855883c79d40fad7d2a23e95d73" }
  s.platform     = :ios
  s.source_files = 'FlatPillButton/Classes/FlatPillButton.{h,m}'
  s.requires_arc = true
end
