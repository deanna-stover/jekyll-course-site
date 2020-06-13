# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'jekyll-course-site'
  spec.version       = '0.1.0'
  spec.authors       = ['oncomouse']
  spec.email         = ['oncomouse@gmail.com']

  spec.summary       = 'Jekyll template for use as a course website.'
  spec.homepage      = 'https://github.com/oncomouse/jekyll-course-site'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(/^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)/i) }

  spec.add_runtime_dependency 'jekyll', '~> 4.1'
end
