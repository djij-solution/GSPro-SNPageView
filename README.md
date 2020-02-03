## 打包流程

### 准备工作

添加 Private pods specs.

```shell
pod repo add gspro-specs https://github.com/djij-solution/Specs.git
```

### 更新 podspec

- 本地确保 podspec 文件已经更新. 主要注意版本号.

### 本地测试 podspec

在 Example 项目中 `pod install` 来测试.

### 更新 Repo

- Commit 并提交 PR.
- 主 Repo merge 了 PR 后, Tag 上对应的版本号

### 发布 podspec

```shell
pod repo push gspro-specs GSPro-SNPageView.podspec --use-libraries --allow-warnings --sources=https://github.com/djij-solution/Specs.git,https://github.com/CocoaPods/Specs.git
```

如果提示错误, 可以尝试清理一下 CocoaPods 的 Cache

```shell
pod cache clean --all
```



# SNPageView - Original
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/sheodon/SNPageView/LICENSE)
[![Version](https://img.shields.io/cocoapods/v/SNPageView.svg?style=flat)](http://cocoapods.org/pods/SNPageView)
[![Platform](https://img.shields.io/cocoapods/p/SNPageView.svg?style=flat)](http://cocoapods.org/pods/SNPageView)
[![GitHub stars](https://img.shields.io/github/stars/sheodon/SNPageView.svg)](https://github.com/sheodon/SNPageView/stargazers)

分页滚动控件，可实现轮播（support page view and tab page view）by Objective-C

## ScreenShots

<img src="/ScreenShots/Example.gif" width="250"/>

##Installation

###Manually
* clone this repo.
* Simply drop the '/SNPageView' folder into your project.
* import 'SNPageView.h'
* import 'SNPageBar.h'
* Enjoy！ 

###Cocoapods
FTPopOverMenu is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "SNPageView"
```

## SNPageView

### SNPageView Delegate

```objective-c
@required
/// return page numbers
- (NSInteger) sn_pageViewForPageNumbers:(SNPageView *)pageView;
/// return UIView at index;
- (UIView*) sn_pageView:(SNPageView *)pageView viewAtIndex:(NSInteger)index;

@optional
/// called just one time
- (void) sn_pageView:(SNPageView *)pageView itemDidAppear:(SNPageViewItem *)item;
/// called just one time
- (void) sn_pageView:(SNPageView *)pageView itemDidDisappear:(SNPageViewItem *)item;
/// called many times
- (void) sn_pageView:(SNPageView *)pageView itemWillAppear:(SNPageViewItem *)item;
/// called many times
- (void) sn_pageView:(SNPageView *)pageView itemWillDisappear:(SNPageViewItem *)item;
/// called many times
- (void) sn_pageView:(SNPageView *)pageView itemWillAppear:(SNPageViewItem *)appearItem itemWillDisappear:(SNPageViewItem *)disappearItem;
```

### SNPageView Methods
 
```objective-c
/// 是否循环滚动(default:NO)
@property (nonatomic, assign)   BOOL          repeatScroll;
/// 当前页数 (default:0）
@property (nonatomic, assign)   NSInteger     currentIndex;

@property (nonatomic, readonly) UIScrollView  *scrollView;

@property (nonatomic, weak) id<SNPageViewDelegate> delegate;
/// 从当前位置滚动到指定的位置
- (void) scrollToPageAtIndex:(NSInteger)index animated:(BOOL)animated;
/// 重新加载
- (void) reloadData;
/// 返回指定索引的 view
- (UIView *)viewAtIndex:(NSInteger )index;
```

### SNPageBar Useage

```objective-c
CGFloat kViewSize = CGSizeMake(320, 640)
CGFloat kPageBarHeight = 40;
CGFloat kPageContentHeight = kViewSize.height - kPageBarHeight;

/// create PageBar
SNPageBar *pageBar = [SNPageBar.alloc initWithFrame:CGRectMake(0, 0, kViewSize.width, kPageBarHeight)];
//pageBar.minItemWidth = 90; // defatul:74 // set item min width
[self.view addSubview:self.pageBar];

/// create item1 and set content view
SNPageBarItem *item1 = [SNPageBarItem.alloc initWithTitle:@"标题1" Target:nil action:nil];
item1.contentView = [SNPageBarContent.alloc initWithFrame:CGRectMake(0, 0, kViewSize.width, kPageContentHeight)];
[pageBar addItem:item1];

/// create item2 and set content view
SNPageBarItem *item2 = [SNPageBarItem.alloc initWithTitle:@"标题2" Target:nil action:nil];
item2.contentView = [SNPageBarContent.alloc initWithFrame:CGRectMake(0, 0, kViewSize.width, kPageContentHeight)];
[pageBar addItem:item2];

/// [pageBar relayout]; //可省略
```


# More

 Look for another way of doing this? [See Here](https://github.com/sheodon/SNPageView)



## License

SNPageView is available under the MIT license. See the LICENSE file for more info.


