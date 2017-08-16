Gem::Specification.new do |s|
    s.name          = 'brain_c'
    s.version       = IO.read('version.txt')
    s.license       = 'MIT'
    s.summary       = 'Brainfuck from C'
    s.description   = 'Compile your C Code into Brainfuck'
    s.homepage      = 'https://github.com/karagenit/brain-c'
    s.author        = 'Caleb Smith'
    s.email         = 'karagenit@outlook.com'
    s.files         = ['lib/brain_c.rb']
    s.platform      = Gem::Platform::RUBY
    s.executables   << 'bfc'

    s.add_development_dependency 'rubocop',                     '~> 0.49'
    s.add_development_dependency 'rdoc',                        '~> 4.2'
    s.add_development_dependency 'bundler',                     '~> 1.15'
    s.add_development_dependency 'rake',                        '~> 12.0'
    s.add_development_dependency 'test-unit',                   '~> 3.2'
    s.add_development_dependency 'github_changelog_generator',  '~> 1.14'
end
