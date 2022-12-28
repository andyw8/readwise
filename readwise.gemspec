# frozen_string_literal: true

require_relative "lib/readwise/version"

Gem::Specification.new do |spec|
  spec.name = "readwise"
  spec.version = Readwise::VERSION
  spec.authors = ["Andy Waite"]
  spec.email = ["andyw8@users.noreply.github.com"]

  spec.summary = "Ruby client for the Readwise API"
  spec.homepage = "https://github.com/andyw8/readwise"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/andyw8/readwise/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "faraday", "~> 2.7"
  spec.add_development_dependency "ruby-lsp", "~> 0.3.7"
  spec.add_development_dependency "standard", "~> 0.3.7"
  spec.add_development_dependency "rubocop-performance", "~> 1.15"
  spec.add_development_dependency "rubocop-minitest", "~> 0.25"
  spec.add_development_dependency "rubocop-rake", "~> 0.6"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
