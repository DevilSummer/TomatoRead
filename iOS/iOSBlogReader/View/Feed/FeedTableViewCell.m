//
//  FeedTableViewCell.m
//  iOSBlogReader
//
//  Created by everettjf on 16/4/11.
//  Copyright © 2016年 everettjf. All rights reserved.
//

#import "FeedTableViewCell.h"


@interface FeedTableViewCell ()
{
    UILabel *_titleLabel;
    UILabel *_subTitleLabel;
}

@end

@implementation FeedTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self _setupView];
    }
    return self;
}

- (void)_setupView{
    UIView *root = self.contentView;
    _titleLabel = [UILabel new];
    _titleLabel.font = [UIFont systemFontOfSize:15];
    _titleLabel.numberOfLines = 2;
    [root addSubview:_titleLabel];
    
    _subTitleLabel = [UILabel new];
    _subTitleLabel.font = [UIFont systemFontOfSize:11];
    [root addSubview:_subTitleLabel];
    
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(root).offset(10);
        make.top.equalTo(root).offset(10);
        make.right.equalTo(root).offset(-10);
    }];
    
    [_subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.equalTo(root).offset(10);
        make.bottom.equalTo(root).offset(-10);
        make.right.equalTo(root).offset(-10);
    }];
}

- (void)prepareForReuse{
    [super prepareForReuse];
    
}

- (void)setTitle:(NSString *)title{
    _titleLabel.text = title?title:@"";
}

- (void)setSubTitle:(NSString *)subTitle{
    _subTitleLabel.text = subTitle?subTitle:@"";
}


@end
