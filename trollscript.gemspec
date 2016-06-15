$LOAD_PATH.unshift 'lib'
require "trollscript/version"

Gem::Specification.new do |s|
  s.name              = "Ñ"
  s.version           = TrollScript::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Ñéñéñéñéñéñéñéñé."
  s.homepage          = "https://github.com/CesarGonzalezM/trollscript"
  s.email             = "cesar.glez.munoz@tombell.org.uk"
  s.authors           = [ "César González" ]
  s.has_rdoc          = false

  s.files             = %w( README.md )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")

  s.executables       = %w( trollscript )
  s.description       = <<desc
  Ñéééééééééééééééééééééééééééééñééééééééñéñéñééñññé
desc
end
