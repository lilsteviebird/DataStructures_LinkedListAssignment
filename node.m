#import "node.h"

@implementation node

-(id) initWithString: (NSString*) input {
  self = [super init];

  if(self){
    self.item = [[NSString alloc] initWithString:input];
    self.next = NULL;
  }
  return self;
}






@end
