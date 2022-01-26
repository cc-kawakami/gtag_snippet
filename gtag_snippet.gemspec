# frozen_string_literal: true

require_relative "lib/gtag_snippet/version"

Gem::Specification.new do |spec|
  spec.name = "gtag_snippet"
  spec.version = GtagSnippet::VERSION
  spec.authors = ["cc-kawakami"]
  spec.email = ["kawakami-moeki@colorfulcompany.co.jp"]

  spec.summary = "gtag_snippet provides a Google Analytics gtag.js snippet."
  spec.description = "gtag_snippet provides a Google Analytics gtag.js snippet."
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["source_code_uri"] = "https://github.com/cc-kawakami/gtag_snippet.git"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"
end
