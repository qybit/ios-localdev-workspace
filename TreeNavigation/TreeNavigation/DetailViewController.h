//
//  DetailViewController.h
//  TreeNavigation
//
//  Created by wqy on 2023/1/10.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) IBOutlet WKWebView *webView;


@end

