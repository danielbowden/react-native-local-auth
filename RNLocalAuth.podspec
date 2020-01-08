package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name = "RNLocalAuth"
  s.version = package['version']
  s.summary = package['description']
  s.requires_arc = true
  s.license = package['license']
  s.homepage = package['homepage']
  s.source = { :git => "https://github.com/danielbowden/react-native-local-auth.git", :tag => s.version.to_s }
  s.author = package['author']
  s.source_files = "*.{h,m}"
  s.platform = :ios, "8.0"
  s.dependency 'React'
end
