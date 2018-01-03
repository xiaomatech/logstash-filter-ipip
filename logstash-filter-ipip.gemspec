Gem::Specification.new do |s|
  s.name = 'logstash-filter-ipip'
  s.version = '2.0.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This ipip filter adds information about the geographical location of IP addresses, based on data from the database from ipip.net."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["bittopaz", "vinsonzou"]
  s.email = 'vinsoncou@gmail.com'
  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*', '*.gemspec', '*.md', 'Gemfile', 'LICENSE']
  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = {"logstash_plugin" => "true", "logstash_group" => "filter"}

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'lru_redux', "~> 1.1.0", '>= 1.1.0'
  s.add_development_dependency 'logstash-devutils'
end
