Gem::Specification.new do |s|
  s.authors = ['Eli Foster']
  s.name = 'isgd'
  s.summary = 'A Ruby gem for interacting with the isgd API.'
  s.version = '1.0.0'
  s.license = 'CC-BY-NC-ND-4.0'
  s.description = 'Accessing the isgd API through HTTPClient.'
  s.email = 'elifosterwy@gmail.com'
  s.homepage = 'https://github.com/elifoster/isgd-rb'
  s.metadata = {
  'issue_tracker' => 'https://github.com/elifoster/isgdrb/issues'
  }
  s.files = [
    'CHANGELOG.md',
    'lib/fishbans.rb',
    'lib/block_engine.rb',
    'lib/player_skins.rb'
  ]
  s.add_runtime_dependency('httpclient', '2.6.0.1')
end