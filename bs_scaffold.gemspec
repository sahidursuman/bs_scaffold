
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bs_scaffold/version"

Gem::Specification.new do |spec|
  spec.name          = "bs_scaffold"
  spec.version       = BsScaffold::VERSION
  spec.authors       = ["Sahidur Rahman Suman"]
  spec.email         = ["suman5040@gmail.com"]

  spec.summary       = %q{A gem for generating any model corresponding controller resources with bootstrap UI.}
  spec.description   = %q{A gem for generating any model corresponding controller resources with bootstrap UI.}
  spec.homepage      = "https://github.com/sahidursuman/bs_scaffold"  

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
