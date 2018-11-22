//
//  SHTableViewCell.m
//  ImitationJDHomeHeader
//
//  Created by joyshow on 2018/11/22.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "SHTableViewCell.h"

@implementation SHTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

+ (instancetype)cellWithTableView:(UITableView *)tableView{

    static NSString *cellIdentifier = @"SHTableViewCell";
    SHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
         cell = [[SHTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"~~~~~~~~"];
    return cell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
