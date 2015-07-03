#import "customeCell.h"

@implementation customeCell
@synthesize label1,label2,label3;
@synthesize img1,img2;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        label1 = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 320, 30)];
        label1.backgroundColor = [UIColor clearColor];
        
        label2 = [[UILabel alloc] initWithFrame:CGRectMake(40, 20, 320, 40)];
        label2.backgroundColor = [UIColor clearColor];
        
        img1 = [[UIImageView alloc] initWithFrame:CGRectMake(250, 0, 40, 40)];
        img1.backgroundColor = [UIColor clearColor];
        img2= [[UIImageView alloc]initWithFrame:CGRectMake(200, 50, 30, 30)];
        img2.backgroundColor=[UIColor clearColor];
    }
    [self addSubview:img2];
    [self addSubview:label1];
    [self addSubview:label2];
    [self addSubview:img1];

    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
