#
#  Be sure to run `pod spec lint TestCollectionView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "TestCollectionView"
  s.version      = "0.0.1"
  s.summary      = "A short description of TestCollectionView."
  s.description  = "A test collection desc"

  s.homepage     = "https://github.com/onelibra/TestCollectionView"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "yangbo" => "yangbo@zgyjyx.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/onelibra/TestCollectionView.git", :tag => s.version }

  s.source_files  =  "TestCollectionView/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"
    s.frameworks = "libPods"

   s.requires_arc = true
   s.dependency "Masonry", "~> 1.0.0"


end
