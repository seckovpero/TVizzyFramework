Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '10.0'
s.name = "TVizzyFramework"
s.summary = "TVizzyFramework includes the actions from TVizzy app"
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Pero" => "seckovpero@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/seckovpero/TVizzyFramework"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :http => "https://www.dropbox.com/s/khqn7w8xh53x0ib/TVizzyFramework.zip?dl=0"}

# 7
s.framework = "UIKit"
s.dependency 'Masonry'
#s.dependency 'MBProgressHUD', '~> 0.9.0'

# 8
s.source_files = "TVizzyFramework/**/*.{h,m}"

# 9
#s.resources = "TVizzyFramework/**/*.{png,jpeg,jpg,storyboard,xib}"
end
