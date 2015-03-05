//
//  MasterViewController.m
//  CustomCells
//
//  Created by José Alberto Esquivel on 3/5/15.
//  Copyright (c) 2015 José Alberto Esquivel. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"

@interface MasterViewController ()

@property NSArray *objects;
@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.preferredContentSize = CGSizeMake(320.0, 600.0);
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *pathPlist = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];;
    _objects = [[NSArray alloc] initWithContentsOfFile:pathPlist];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender {
    if (!self.objects) {
        self.objects = [[NSArray alloc] init];
    }
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.objects.count;
}

- (CustomTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSDictionary *object = self.objects[indexPath.row];
    NSString *tipo = [object valueForKey:@"tipo"];
    NSInteger precio = [object valueForKey:@"precio"];
    NSString *capacidad = [object valueForKey:@"capacidad"];
    
    cell.oTipo.text = tipo;
    cell.oCapacidad.text = capacidad;
    cell.oPrecio.text = [[NSString alloc] initWithFormat:@"%d", precio];
    NSString *stringUrl = [object valueForKey:@"url"];
    NSURL	*nsurl	=	[NSURL	URLWithString: stringUrl];
    NSData	*data	=	[[NSData alloc]	initWithContentsOfURL:nsurl];
    UIImage	*imagen =	[UIImage imageWithData:	data];
    cell.oImagen.image = imagen;
    
    return cell;
}

@end
