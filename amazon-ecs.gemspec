# -*- encoding: utf-8 -*-
# added by ykominami@gmail.com
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "amazon/ecs/version"
#require "amazon/ecs"
#

# removed by ykominami@gmail.com
#$:.push File.expand_path("../lib", __FILE__)
#
#require 'amazon/ecs'

Gem::Specification.new do |gem|
  gem.name = %q{amazon-ecs}
  gem.version = Amazon::Ecs::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.authors = ["Herryanto Siatono"]
  gem.email = %q{herryanto@gmail.com}
  gem.homepage = %q{https://github.com/jugend/amazon-ecs}
  gem.summary = %q{Generic Amazon Product Advertising Ruby API.}
  gem.description = %q{Generic Amazon Product Advertising Ruby API.}

  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- test/*`.split("\n")
  gem.require_paths = ["lib"]
 
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if gem.respond_to?(:metadata)
    gem.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gem.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  gem.bindir        = "exe"
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ["lib"]

  if gem.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    gem.specification_version = 2
 
    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      gem.add_runtime_dependency("nokogiri", "~> 1.4")
      gem.add_runtime_dependency("ruby-hmac", "~> 0.3")

      gem.add_development_dependency "bundler", "~> 2.2.0"
      gem.add_development_dependency "rake", "~> 13.1.0"
      gem.add_development_dependency "rspec", "~> 3.0"
      gem.add_development_dependency "test-unit"
    else
      gem.add_dependency("nokogiri", "~> 1.4")
      gem.add_dependency("ruby-hmac", "~> 0.3")
      
      gem.add_dependency "bundler", "~> 2.2.0"
      gem.add_dependency "rake", "~> 13.1.0"
      gem.add_dependency "rspec", "~> 3.0"
      gem.add_dependency "test-unit"
    end
  else
    gem.add_dependency("nokogiri", "~> 1.4")
    gem.add_dependency("ruby-hmac", "~> 0.3")

    gem.add_dependency "bundler", "~> 2.2.0"
    gem.add_dependency "rake", "~> 13.1.0"
    gem.add_dependency "rspec", "~> 3.0"
    gem.add_dependency "test-unit"
  end
end
