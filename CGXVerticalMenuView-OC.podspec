Pod::Spec.new do |s|
s.name         = "CGXVerticalMenuView-OC"    #存储库名称
s.version      = "1.0.5"      #版本号，与tag值一致
s.summary      = "仿京东、淘宝等主流APP分类切换的滚动视图"  #简介
s.description  = "仿京东、淘宝等主流APP分类切换的滚动视图的封装库"  #描述
s.homepage     = "https://github.com/974794055/CGXVerticalMenuView-OC"      #项目主页，不是git地址
s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
s.author             = { "974794055" => "974794055@qq.com" }  #作者
s.platform     = :ios, "8.0"                  #支持的平台和版本号
s.source       = { :git => "https://github.com/974794055/CGXVerticalMenuView-OC.git", :tag => s.version }         #存储库的git地址，以及tag值
s.requires_arc = true #是否支持ARC
s.frameworks = 'UIKit'

#需要托管的源代码路径
s.source_files = 'CGXVerticalMenuView/CGXVerticalMenu.h'

#开源库头文件
s.public_header_files = 'CGXVerticalMenuView/CGXVerticalMenu.h'

 s.subspec 'MenuTitleView' do |ss|
    ss.source_files = 'CGXVerticalMenuView/MenuTitleView/**/*.{h,m}'

  end

 s.subspec 'MenuCollectionView' do |ss|
    ss.source_files = 'CGXVerticalMenuView/MenuCollectionView/**/*.{h,m}'
  
  end

 s.subspec 'MenuCategoryView' do |ss|
    ss.source_files = 'CGXVerticalMenuView/MenuCategoryView/**/*.{h,m}'
    ss.dependency 'CGXVerticalMenuView-OC/MenuTitleView'
    ss.dependency 'CGXVerticalMenuView-OC/MenuCollectionView'
  end




end




