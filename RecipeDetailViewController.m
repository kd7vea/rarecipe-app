//
//  RecipeDetailViewController.m
//  RARecipe
//
//  Created by Jake Estepp on 9/19/15.
//  Copyright (c) 2015 Jake Estepp. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "RARecipes.h"

static CGFloat margin = 15;

@interface RecipeDetailViewController ()

@end

@implementation RecipeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(64.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:scrollView];
    
    CGFloat topMargin = 20;
    CGFloat heightForDescription = [self heightForDescription: [RARecipes descriptionAtIndex:self.recipeIndex]];
    
    UILabel *description = [[UILabel alloc] initWithFrame:CGRectMake(margin, topMargin, self.view.frame.size.width - 2 * margin, heightForDescription)];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
