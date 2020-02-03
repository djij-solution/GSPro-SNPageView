#
#  Be sure to run `pod spec lint SNPageView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "GSPro-SNPageView"
  s.version      = "2.0.2"
  s.summary      = "GSPro Modification of 分页滚动控件，可实现轮播（support page view and tab page view）"

  s.description  = <<-DESC
                  GSPro Modification of 分页滚动控件，可实现轮播（support page view and tab page view）by Objective-C
                  DESC

  s.homepage     = "https://github.com/djij-solution/GSPro-SNPageView.git"
  s.license      = "MIT"
  s.author             = { "zongyao.qu" => "zongyao.qu@dji.com" }
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  s.ios.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/djij-solution/GSPro-SNPageView.git", :tag => s.version }
  s.source_files  = "SNPageView", "SNPageView/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = "Foundation", "UIKit"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
end
