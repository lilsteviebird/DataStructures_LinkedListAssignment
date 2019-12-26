#import <Foundation/Foundation.h>
#import "node.h"

@interface linkedList : NSObject
{
  int rInitialSize;
  int rIndexSize;
  int rRemoveIndexSize;
}

@property node *head;
@property node *temp;

-(void) iAdd: (NSString*)itemGiven;
-(void) rAdd: (NSString*)itemGiven nodeHead: (node*) headGiven;
-(void) iAdd: (NSString*)itemGiven atIndex: (int) index;
-(void) rAdd: (NSString*)itemGiven atIndex: (int) index nodeHead: (node*) headGiven;
-(void) addFirst: (NSString*)itemGiven;
-(BOOL) containsObject: (NSString*) itemGiven;
-(node*) getElement: (int) index;
-(node*) getFirst;
-(int) indexOf: (NSString*) itemGiven;
-(void) iRemove: (NSString*) itemGiven;
-(void) rRemove: (NSString*) itemGiven nodeHead: (node*) headGiven;
-(void) iRemoveIndex: (int) index;
-(void) rRemoveIndex: (int) index nodeHead: (node*) headGiven;
-(int) iSize;
-(int) rSize: (node*) listHead;
-(void) resetRSize;
-(void) resetRIndexSize;
-(void) resetRRemoveIndexSize;
-(void) displayList;
-(void) clearList;


@end
