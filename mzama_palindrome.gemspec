require_relative 'lib/mzama_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "mzama_palindrome"
  spec.version       = MzamaPalindrome::VERSION
  spec.authors       = ["Matteo Zamaria"]
  spec.email         = ["matteozamaria@gmail.com"]

  spec.summary       = %q{Palindrome detector.}
  spec.description   = %q{The palindrome detector from the Learn Enough Ruby tutorial, for TDD and making gems.}
  spec.homepage      = "https://github.com/mzama/palindrome_gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to
  # any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mzama/palindrome_gem"
  spec.metadata["changelog_uri"] = "https://github.com/mzama/palindrome_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
