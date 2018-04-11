
// JS
defineClass('ViewController', {
            handleBtn: function(sender) {
            var tableViewCtrl = ViewController.alloc().init()
        self.navigationController().pushViewController_animated(tableViewCtrl, YES)
            }
})

//JS
defineClass("JSViewController", {
            tableView_didSelectRowAtIndexPath: function(tableView, indexPath) {
            var row = indexPath.row()
           
            var content = self.dataSource()[row];
            console.log(content);
            var ctrl = JSViewController.alloc().initWithContent(content);
            self.navigationController().pushViewController(ctrl);

            }
})

