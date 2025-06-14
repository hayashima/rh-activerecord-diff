require_relative 'lib/active_record/diff/version'

Gem::Specification.new do |spec|
  spec.name          = "rh-activerecord-diff"
  spec.version       = ActiveRecord::Diff::VERSION
  spec.authors       = ["patorash"]
  spec.email         = ["chariderpato@gmail.com"]

  spec.summary       = %q{Simple ActiveRecord diff functionality}
  spec.description   = %q{Simple ActiveRecord diff functionality}
  spec.homepage      = 'https://github.com/hayashima/rh-activerecord-diff'
  spec.license       = "CC0-1.0"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency('activerecord', '< 7.2.0','>= 5.2.0')
  spec.add_development_dependency('concurrent-ruby', '1.3.4')
  spec.add_development_dependency('mutex_m', '~> 0.1')
  spec.add_development_dependency('base64', '~> 0.1')
  spec.add_development_dependency('bigdecimal', '~> 3.0' )
  spec.add_development_dependency('rake', '~> 13.0')
  spec.add_development_dependency('sqlite3', '< 3.0', '>= 1.4.0')

end
