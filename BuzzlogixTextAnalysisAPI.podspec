Pod::Spec.new do |s|
  s.name             = "BuzzlogixTextAnalysisAPI"
  s.version          = "0.0.1"
  s.summary          = <<-SUMMARY
  <p>Buzzlogix's Text Analysis API.</p>

SUMMARY
  s.homepage         = "http://apimatic.io"
  s.license          = 'MIT'
  s.author           = { "APIMATIC" => "support@apimatic.io" }

  s.requires_arc     = true
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'

  s.source_files     = 'BuzzlogixTextAnalysisAPI/**/*.{h,m}'

  s.dependency       'Unirest' , '~> 1.1.2'
  s.dependency       'JSONModel'
end
