
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
            var content = self.dataSource().objectAtIndex(row);
            console.log(content);
            var ctrl = JSViewController.alloc().init();
            ctrl.setTitle(content)
            self.navigationController().pushViewController_animated(ctrl, YES)

            }
})

