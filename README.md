# HotUpdate
热更新demo
## ViewController内 方法未实现，即需要处理的地方
```
- (void)handleBtn:(UIButton *)sender
{

}
```
## demo.js 内如下即可
```
// JS
defineClass('ViewController', {
handleBtn: function(sender) {
var tableViewCtrl = ViewController.alloc().init()
self.navigationController().pushViewController_animated(tableViewCtrl, YES)
}
})

```
