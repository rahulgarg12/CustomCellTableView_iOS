#import "tabelvc.h"
#import "customeCell.h"

@interface tabelvc ()

@end

@implementation tabelvc

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        NSArray *imgarray = [NSArray arrayWithObjects:@"pic1.png",@"pic2.png"@"pic3.png"@"pic4.png", nil];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    lblarray = [NSArray arrayWithObjects:@"ram",@"shayam",@"mohan",@"pulkit",@"nikhil",@"vipul",@"sateesh",@"raj"@"ram",@"shayam",@"mohan",@"pulkit",@"nikhil",@"vipul",@"sateesh",@"raj",nil];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"Navbar_7.png"] forBarMetrics:UIBarMetricsDefault];
    self.navigationItem.title=@"Custom TableView";

}

#pragma mark - Table view data source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
return [lblarray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"Cell";
    customeCell * cell = (customeCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[customeCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        NSArray *array=[[NSArray alloc]initWithObjects:@"tablecustomvc", nil];
    }
    
    cell.label1.text = [lblarray objectAtIndex:indexPath.row];
    cell .label2.text=[lblarray objectAtIndex:indexPath.row];
       //cell.backgroundView = [ [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@""] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ]autorelease];

    cell.img1.image = [UIImage imageNamed:@"img.png"];
    cell.img2.image=[UIImage imageNamed:@"Navbar_7.png"];
   // cell.label2.text =
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}
#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //First you get the cell you want to change
    UITableViewCell* theCell = [tableView cellForRowAtIndexPath:indexPath];
    
    //Then you change the properties (label, text, color etc..) in your case, the background color
    theCell.contentView.backgroundColor=[UIColor redColor];
    
    //Deselect the cell so you can see the color change
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
