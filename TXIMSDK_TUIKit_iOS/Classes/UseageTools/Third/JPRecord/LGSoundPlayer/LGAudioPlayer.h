

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LGAudioPlayerState){
	LGAudioPlayerStateNormal = 0, 
	LGAudioPlayerStatePlaying = 2,
	LGAudioPlayerStateCancel = 3,
};

@protocol LGAudioPlayerDelegate <NSObject>

- (void)audioPlayerStateDidChanged:(LGAudioPlayerState)audioPlayerState forIndex:(NSUInteger)index;

@end

@interface LGAudioPlayer : NSObject

@property (nonatomic, copy) NSString *URLString;
@property (nonatomic, assign) NSUInteger index;
@property (nonatomic, weak) id<LGAudioPlayerDelegate>delegate;

+ (instancetype)sharePlayer;

- (void)playAudioWithURLString:(NSString *)URLString atIndex:(NSUInteger)index;

- (void)stopAudioPlayer;

- (void)playAudioOnlineWithContentsOfURL:(NSURL *)url;

@end
