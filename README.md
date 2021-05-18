# YFPSMonitor

[![CI Status](https://img.shields.io/travis/eaffy/YFPSMonitor.svg?style=flat)](https://travis-ci.org/eaffy/YFPSMonitor)
[![Version](https://img.shields.io/cocoapods/v/YFPSMonitor.svg?style=flat)](https://cocoapods.org/pods/YFPSMonitor)
[![License](https://img.shields.io/cocoapods/l/YFPSMonitor.svg?style=flat)](https://cocoapods.org/pods/YFPSMonitor)
[![Platform](https://img.shields.io/cocoapods/p/YFPSMonitor.svg?style=flat)](https://cocoapods.org/pods/YFPSMonitor)

## 使用场景

> 如果添加视图是个单例,则只有最有一次添加有效

鉴于应用场景只限于两种:
1. 一直悬浮于所有视图上的一个指示器
2. 某个页面单独添加一个label
即,
1. 只有某个入口作为开关,控制是否显示指示器
2. 多个页面要获取不同的label

所以,所有对象只需要设置成普通对象,不需要设置成单例.
默认debug显示,release不显示.一个深度的操作可以在所有情况显示

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

YFPSMonitor is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YFPSMonitor'
```

## Author

eaffy, yifei239@126.com

## License

YFPSMonitor is available under the MIT license. See the LICENSE file for more info.
