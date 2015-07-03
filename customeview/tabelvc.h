#import <UIKit/UIKit.h>

@interface tabelvc : UIViewController <UITableViewDelegate,UITableViewDataSource>
{

    IBOutlet UITableView *tableview;
    NSArray *lblarray;
}

@end
