/*
 * Copyright (C) 2013-2015 Bilibili
 * Copyright (C) 2013-2015 Zhang Rui <bbcallen@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "IJKDemoSampleViewController.h"

#import "IJKCommon.h"
#import "IJKMoviePlayerViewController.h"

@interface IJKDemoSampleViewController () <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic,strong) IBOutlet UITableView *tableView;
@property(nonatomic,strong) NSArray *sampleList;

@end

@implementation IJKDemoSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"M3U8";

    NSMutableArray *sampleList = [[NSMutableArray alloc] init];
    [sampleList addObject:@[@"宣传视频",
                            @"http://promotional.gxycc.cmcqly.com:91/promotionalVideoV1.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=NjWHFEJM603d26cHd646157k2W77t4n9%2F20210331%2Feast-1%2Fs3%2Faws4_request&X-Amz-Date=20210331T022522Z&X-Amz-Expires=1893430861&X-Amz-SignedHeaders=host&X-Amz-Signature=ed451f2c78e77a2dfe71ed9118a220cfac4904d65410126004c8777bb63be6f7"]];
    [sampleList addObject:@[@"电影简介视频",
                            @"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"]];
    [sampleList addObject:@[@"A35视频",
                            @"http://hxbucket.hxbucket.cmcqly.com:91/HIKZR0k1V5xXQ8334OKo090NkI5n733h/Q01020A350300TUMYUSX/2021/05/26/20210526095659_20210526095729.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=HIKZR0k1V5xXQ8334OKo090NkI5n733h%2F20210526%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210526T024042Z&X-Amz-Expires=604799&X-Amz-SignedHeaders=host&X-Amz-Signature=f4befb50dd51d65275f721e426b9a21dd1f0ccd8826d8f13d857495b7c7b3c41"]];
    [sampleList addObject:@[@"A21视频",
                            @"http://hdaswycc.hdaswycc.cmqly.com/7/HIK596h889b53t349SfQi2UU7KOhs54K/Q01030A2101A12K6HCKR/2021/06/15/20210615080030_20210615080132.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=HIK596h889b53t349SfQi2UU7KOhs54K%2F20210615%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210615T034305Z&X-Amz-Expires=604799&X-Amz-SignedHeaders=host&X-Amz-Signature=605618e16647f24fbb3ca3da84f5b569e52d324693d3066d12ddbecf7decef80"]];
    [sampleList addObject:@[@"bipbop basic 400x300 @ 232 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/gear1/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop basic 640x480 @ 650 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/gear2/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop basic 640x480 @ 1 Mbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/gear3/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop basic 960x720 @ 2 Mbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/gear4/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop basic 22.050Hz stereo @ 40 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_4x3/gear0/prog_index.m3u8"]];

    [sampleList addObject:@[@"bipbop advanced master playlist",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/bipbop_16x9_variant.m3u8"]];
    [sampleList addObject:@[@"bipbop advanced 416x234 @ 265 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/gear1/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop advanced 640x360 @ 580 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/gear2/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop advanced 960x540 @ 910 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/gear3/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop advanced 1280x720 @ 1 Mbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/gear4/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop advanced 1920x1080 @ 2 Mbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/gear5/prog_index.m3u8"]];
    [sampleList addObject:@[@"bipbop advanced 22.050Hz stereo @ 40 kbps",
                            @"http://devimages.apple.com.edgekey.net/streaming/examples/bipbop_16x9/gear0/prog_index.m3u8"]];

    self.sampleList = sampleList;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Samples";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (IOS_NEWER_OR_EQUAL_TO_7) {
        return self.sampleList.count;
    } else {
        return self.sampleList.count - 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abc"];
        cell.textLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
    }

    cell.textLabel.text = self.sampleList[indexPath.row][0];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    NSArray *item = self.sampleList[indexPath.row];
    NSURL   *url  = [NSURL URLWithString:item[1]];

    [self.navigationController presentViewController:[[IJKVideoViewController alloc] initWithURL:url] animated:YES completion:^{}];
}

@end
