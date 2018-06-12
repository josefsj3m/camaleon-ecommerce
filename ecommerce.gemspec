$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'ecommerce/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = 'camaleon_ecommerce'
  s.version = Ecommerce::VERSION
  s.authors = ['Owen']
  s.email = ['owenperedo@gmail.com']
  s.homepage = 'http://camaleon.tuzitio.com/store/plugins/6'
  s.summary = 'This is a simple E-Commerce plugin that permits to start selling in about 10 minutes, because it takes advantage of all features of Camaleon CMS to easy management by admin panel.'
  s.description = 'This is a simple E-Commerce plugin that permits to start selling in about 10 minutes, because it takes advantage of all features of Camaleon CMS to easy management by admin panel.'
  s.license = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  # s.add_dependency 'rails' , '>= 4.1'
  s.add_dependency 'camaleon_cms' , '>=2.4'
  s.add_dependency 'ransack' , '>= 1.7.0'
  s.add_dependency 'wicked_pdf'
  s.add_dependency 'wkhtmltopdf-binary'
  # FIXME Dependency changed to fix countries names in portuguese. Countries names come from the countries gem which in earlier version does not support brazilian portuguese.
  # s.add_dependency 'country_select', '~> 2.4'
  s.add_dependency 'country_select', '~> 3.1'
  s.add_dependency 'activemerchant', '~> 1.54'
  s.add_dependency 'stripe'

  s.add_development_dependency 'sqlite3', '~> 1.3'
end
