Gem::Specification.new do |s|
  s.name = 'message_media_conversations'
  s.version = '1.0.1'
  s.summary = 'message_media_conversations'
  s.description = 'The Conversations API allows users to communicate by sending and receiving messages via Over-The-Top (OTT) messaging services. OTT application is an app or service that provides a product over the Internet and bypasses traditional distribution. Here\'s an in-depth explanation of what the term means.This feature is disabled by default. To enable it, you don\'t need to make any changes to your application, just an account configuration change by MessageMedia\'s support team support@messagemedia.com.For our initial release, we\'re releasing Facebook Messenger which allows you to send messages as a Facebook page owner and receive messages from other Facebook users.'
  s.authors = ['MessageMedia Developers']
  s.email = 'developers@messagemedia.com'
  s.homepage = 'https://developers.messagemedia.com'
  s.license = 'Apache-2.0'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '>= 0.10')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
