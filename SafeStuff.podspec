Pod::Spec.new do |s|
  s.name             = 'SafeStuff'
  s.version          = '0.1.0'
  s.summary          = 'A super set of safe extensions.'
  s.description      = 'A super set of safe extensions to avoid the most common crashes in iOS apps.'
  s.homepage         = 'https://github.com/mejiagarcia/SafeStuff'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Carlos Mejia' => 'luiscarlos083@hotmail.com' }
  s.source           = { :git => 'https://github.com/mejiagarcia/SafeStuff.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.instagram.com/carlosmejia083/'
  s.ios.deployment_target = '10.0'
  s.source_files = 'SafeStuff/Classes/**/*'
end
