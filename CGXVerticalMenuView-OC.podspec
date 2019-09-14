Pod::Spec.new do |s|
s.name         = "CGXVerticalMenuView-OC"    #存储库名称
s.version      = "0.0.1"      #版本号，与tag值一致
s.summary      = "垂直 菜单封装"  #简介
s.description  = "(主流APP分类切换滚动视图)  封装"  #描述
s.homepage     = "https://github.com/974794055/CGXVerticalMenuView-OC"      #项目主页，不是git地址
s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
s.author             = { "974794055" => "974794055@qq.com" }  #作者
s.platform     = :ios, "8.0"                  #支持的平台和版本号
s.source       = { :git => "https://github.com/974794055/CGXVerticalMenuView-OC.git", :tag => s.version }         #存储库的git地址，以及tag值
s.requires_arc = true #是否支持ARC
s.frameworks = 'UIKit'

#s.source_files = "CGXVerticalMenuView", "CGXVerticalMenuView/**/*.{h,m}" #需要托管的源代码路径

  s.public_header_files = 'CGXVerticalMenuView-OC/CGXVerticalMenuView.h'
  s.source_files = 'CGXVerticalMenuView-OC/CGXVerticalMenuView.h'


  s.subspec 'CGXVerticalMenuBaseView' do |ss|
    ss.source_files = 'GXVerticalMenuView-OC/CGXVerticalMenuBase.{h,m}'
    ss.public_header_files = 'CGXVerticalMenuView-OC/CGXVerticalMenuView.h'
  end

 s.subspec 'CGXVerticalMenuTitleView' do |ss|
    ss.source_files = 'CGXVerticalMenuView-OC/CGXVerticalMenuTitle.{h,m}'
    ss.public_header_files = 'GXVerticalMenuView-OC/CGXVerticalMenuView.h'
  end

 s.subspec 'CGXVerticalMenuIndicatorView' do |ss|
    ss.source_files = 'GXVerticalMenuView-OC/CGXVerticalMenuIndicator.{h,m}View'
    ss.public_header_files = 'GXVerticalMenuView-OC/CGXVerticalMenuView.h'
  end

 s.subspec 'CGXVerticalMenuComond' do |ss|
    ss.source_files = 'GXVerticalMenuView-OC/CGXVerticalMenuComond/**/*.{h,m}'
    ss.public_header_files = 'GXVerticalMenuView-OC/GXVerticalMenuView.h'
  end



end



