$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')

include_files = ["README*", "Rakefile", "init.rb", "{lib,tasks,test,rails,generators,shoulda_macros}/**/*"].map do |glob|
  Dir[glob]
end.flatten

Gem::Specification.new do |s|
  s.name              = "gandi"
  s.version           = '2.1.2'
  s.license           = 'MIT'
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Gandi XML RPC API v3"
  s.author            = "Olivier Ruffin"
  s.description       = "Wrapper around gandi xml-rpc API v3"
  s.homepage          = "https://github.com/veilleperso/gandi"
  s.has_rdoc          = false
  s.files             = include_files
  s.require_path      = "lib"
  s.add_dependency 'hashie'
end
