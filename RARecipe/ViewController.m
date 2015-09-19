//
//  ViewController.m
//  RARecipe
//
//  Created by Jake Estepp on 9/17/15.
//  Copyright (c) 2015 Jake Estepp. All rights reserved.
//

#import "ViewController.h"
#import "RARecipes.h"
#import "RecipeDetailViewController.h"



@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    UITableView *tableView = [UITableView new];
    tableView.frame = self.view.frame;
    [self.view addSubview:tableView];
    tableView.dataSource = self;
    tableView.delegate=self;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [UITableViewCell new];
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath: indexPath animated:YES];
    
    RecipeDetailViewController *recipeDetailViewController = [RecipeDetailViewController new];
    [self.navigationController pushViewController:recipeDetailViewController animated:YES];
    recipeDetailViewController.title = [RARecipes titleAtIndex:indexPath.row];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    

    return [RARecipes count];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
