//
//  CitiesViewController.h
//  TreeNavigation
//
//  Created by wqy on 2023/1/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CitiesViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *listData;

@end

NS_ASSUME_NONNULL_END
