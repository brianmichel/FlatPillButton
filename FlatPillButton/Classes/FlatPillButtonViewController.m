//
//  FlatPillButtonViewController.m
//  FlatPillButton
//
//  Created by Brian Michel on 11/11/12.
//  Copyright (c) 2012 Foureyes. All rights reserved.
//

#import "FlatPillButtonViewController.h"
#import "FlatPillButtonCell.h"

static NSString * flatButtonCellReuseID = @"FlatButtonCell";

@interface FlatPillButtonViewController ()

@end

@implementation FlatPillButtonViewController

- (id)initWithStyle:(UITableViewStyle)style
{
  self = [super initWithStyle:style];
  if (self) {
    // Custom initialization
    [self.tableView registerClass:[FlatPillButtonCell class] forCellReuseIdentifier:flatButtonCellReuseID];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  }
  return self;
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  [self.tableView flashScrollIndicators];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  return 40;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 50.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  FlatPillButtonCell *cell = (FlatPillButtonCell *)[tableView dequeueReusableCellWithIdentifier:flatButtonCellReuseID forIndexPath:indexPath];
  cell.selectionStyle = UITableViewCellSelectionStyleNone;
  // Configure the cell...
  return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  return nil;
}

@end
