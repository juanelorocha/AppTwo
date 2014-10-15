//
//  StateDetail.m
//  AppTwo
//
//  Created by juan rocha on 10/9/14.
//  Copyright (c) 2014 JuanRocha. All rights reserved.
//

#import "StateDetail.h"
#import "Declarations.h"
#import "cellCity.h"

@interface StateDetail ()

@end

@implementation StateDetail

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Selected State Crest %@", strSelectedStateCrest);
    NSLog(@"Selected State %@", strSelectedState);
    if ([strSelectedState isEqual:@"JALISCO"]) {
        NSLog(@"Entre a Jalisco");
        maCity = [NSMutableArray arrayWithObjects:@"GUADALAJARA", @"PUERTO VALLARTA", @"TEQUILA", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"guadalajara.jpg", @"puertovallarta.jpg", @"tequila.jpg", nil];
    }else if ([strSelectedState isEqual:@"CHIAPAS"]) {
        maCity = [NSMutableArray arrayWithObjects:@"TUXTLA GUTIERREZ", @"SAN CRISTOBAL", @"PALENQUE", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"tuxtla.jpg", @"sancristobal.jpg", @"palenque.jpg", nil];
    }else if ([strSelectedState isEqual:@"CHIHUAHUA"]) {
        maCity = [NSMutableArray arrayWithObjects:@"CHIHUAHUA", @"CIUDAD JUAREZ", @"CIUDAD MADERA", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"chihuahua.png", @"juarez.jpg", @"madera.jpg", nil];
    }else if ([strSelectedState isEqual:@"OAXACA"]) {
        maCity = [NSMutableArray arrayWithObjects:@"OAXACA", @"SALINA CRUZ", @"PUERTO ESCONDIDO", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"oaxacac.jpg", @"salina.jpg", @"escondido.jpg", nil];
    } else if ([strSelectedState isEqual:@"QUINTANA ROO"]) {
        maCity = [NSMutableArray arrayWithObjects:@"CANCUN", @"PLAYA DEL CARMEN", @"TULUM", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"cancun.jpg", @"carmen.jpg", @"tulum.jpg", nil];
    } else if ([strSelectedState isEqual:@"YUCATAN"]) {
        maCity = [NSMutableArray arrayWithObjects:@"MERIDA", @"VALLADOLID", @"CHICHEN ITZA", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"merida.jpg", @"valadolid.jpg", @"chichen.jpg", nil];
    }else if ([strSelectedState isEqual:@"GUANAJUATO"]) {
        maCity = [NSMutableArray arrayWithObjects:@"GUANAJUATO", @"LEON", @"SAN MIGUEL ALLENDE", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"guanajuatoc.jpg", @"leon.jpg", @"sanmiguel.jpg", nil];
    } else {
        maCity = [NSMutableArray arrayWithObjects:@"SAN LUIS POTOSI", @"CIUDAD VALLES", @"RIO VERDE", nil];
        maCityPhoto = [NSMutableArray arrayWithObjects:@"sanluisc.jpg", @"valles.jpg", @"rioverde.jpg", nil];
}
    
    self.imgStateCrest.image= [UIImage imageNamed:strSelectedStateCrest];
    self.lblStateName.text= strSelectedState;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/**********************************************************************************************
 Table Functions
 *********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"cellFamily");
    static NSString *CellIdentifier = @"cellCity";
    
    cellCity *cell = (cellCity *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellCity alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblCityName.text = maCity[indexPath.row];
    cell.imgCityPhoto.image = [UIImage imageNamed:maCityPhoto[indexPath.row]];
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    strSelectedCity = [NSString stringWithFormat:@"%@", maCity[indexPath.row]];
    strSelectedCityPhoto = [NSString stringWithFormat:@"%@", maCityPhoto[indexPath.row]];
    self.lblSelectedCity.text = strSelectedCity;
    self.imgStateCrest.image = [UIImage imageNamed:strSelectedCityPhoto];
    
}

@end
