#
#  Be sure to run `pod spec lint Purchase.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |spec|
  spec.name         = "iOSPurchases"
  spec.version      = "1.0.4"
  spec.summary      = "Purchase framework to buy, restore and verify products"
  spec.description  = <<-DESC
The best ever framework
                   DESC
  spec.homepage     = "https://github.com/Faktorealchik/iOSPurchases"
  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "nesterov" => "faktorealchik@gmail.com" }

  spec.platform     = :ios, "10.0"
  spec.swift_version = "5.0"

  spec.source       = { :git => "https://github.com/Faktorealchik/iOSPurchases.git", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "iOSPurchases/Core/**"
  spec.resource_bundle = { 'Purchase' => ['iOSPurchases/Assets/*.*'] }
  
  # spec.resources = "Purchase/Support/**"
  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"
  # spec.requires_arc = true
  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
