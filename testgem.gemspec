require_relative 'lib/testgem/version'

Gem::Specification.new do |spec|
  spec.name          = "testgem"
  spec.version       = Testgem::VERSION
  spec.authors       = ["Brandon Hornseth"]
  spec.email         = ["bhornseth@gmail.com"]

  spec.summary       = %q{a gem for testing}
  spec.description   = %q{a gem for testing things that I need}
  spec.homepage      = "https://bhornseth.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bhornseth/testgem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
