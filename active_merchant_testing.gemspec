PKG_FILES = FileList[
  '[a-zA-Z]*',
  'generators/**/*',
  'lib/**/*',
  'rails/**/*',
  'tasks/**/*',
  'test/**/*'
]

Gem::Specification.new do |s|
  s.name             = "active_merchant_testing"
  s.version          = "0.0.1"
  s.authors          = ["Ben Wiseley", "Thomas Brice"]
  s.email            = "tomtoday@gmail.com"
  s.platform         = Gem::Platform::RUBY
  s.summary          = "ActiveMerchant testing gateways"
  s.description      = "This library contains stubbed gateways to assit in testing ActiveMerchant apps."
  s.files            = PKG_FILES.to_a
  s.require_path     = "lib"
  s.has_rdoc         = false
  s.extra_rdoc_files = ["README"]
end
