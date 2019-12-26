#import "linkedList.h"

@implementation linkedList

-(id) init {
  self = [super init];
  if(self){
    self.head = NULL;
    self.temp = NULL;
  }
  return self;
}



-(void) iAdd: (NSString*) itemGiven{
  node* thingAdded = [[node alloc] initWithString:itemGiven];
  if(self.head == NULL){
    self.head = thingAdded;
  }else{
    self.temp = self.head;
    while(self.temp.next != NULL){
      self.temp = self.temp.next;
    }
    self.temp.next = thingAdded;
  }
}

-(void) rAdd: (NSString*) itemGiven nodeHead: (node*) headGiven{
  node* thingAdded = [[node alloc] initWithString: itemGiven];
  if(headGiven.next == NULL){
    headGiven.next = thingAdded;
  }else{
    return [self rAdd: itemGiven nodeHead: headGiven.next];
  }
}

-(void) iAdd: (NSString*)itemGiven atIndex: (int) index{
  node* thingAdded = [[node alloc] initWithString: itemGiven];
  self.temp = self.head;

  if(index == 0){
    [self addFirst: itemGiven];
  }else{
    for(int i = 0; i < index - 1; i++){
      self.temp = self.temp.next;
    }
    node* oneAhead = self.temp.next;
    self.temp.next = thingAdded;
    self.temp = self.temp.next;
    self.temp.next = oneAhead;
  }
}

-(void) rAdd: (NSString*)itemGiven atIndex: (int) index nodeHead: (node*) headGiven{
  node* thingAdded = [[node alloc] initWithString: itemGiven];
  if(rIndexSize == index - 1){
    node* oneAhead = headGiven.next;
    headGiven.next = thingAdded;
    headGiven = headGiven.next;
    headGiven.next = oneAhead;
  }else{
    rIndexSize++;
    return [self rAdd: itemGiven atIndex: index nodeHead: headGiven.next];
  }
}

-(void) addFirst: (NSString*)itemGiven{
  node* thingAdded = [[node alloc] initWithString: itemGiven];
  thingAdded.next = self.head;
  self.head = thingAdded;
}

-(BOOL) containsObject: (NSString*) itemGiven{
  node* thingAdded = [[node alloc] initWithString: itemGiven];
  BOOL okay = FALSE;
  self.temp = self.head;
  while(self.temp!= NULL){
    if([self.temp.item isEqualToString: itemGiven]){
      okay = TRUE;
    }
    self.temp = self.temp.next;
  }
  if(!okay){
    return FALSE;
  }else{
    return TRUE;
  }
}

-(node*) getElement: (int) index{
  self.temp = self.head;

  for(int i = 0; i < index - 1; i++){
    self.temp = self.temp.next;
  }
  NSLog(@"Your item at specified index is %@ \n", self.temp.item);
  return self.temp.item;
}

-(node*) getFirst{
  self.temp = self.head;
  return self.temp.item;
}

-(int) indexOf: (NSString*) itemGiven{
  node* thingAdded = [[node alloc] initWithString: itemGiven];
  self.temp = self.head;
  int count = 0;
  bool isHere = false;
  while(self.temp != NULL){
    if([self.temp.item isEqualToString: itemGiven]){
      NSLog(@"Your item is found at index %i", count);
      isHere = true;
      return count;
    }
    self.temp = self.temp.next;
    count++;
  }if(isHere == false){
    NSLog(@"Your item is not a part of this list");
  }
}

-(void) iRemove: (NSString*) itemGiven{
  node* thingRemoved = [[node alloc] initWithString: itemGiven];
  self.temp = self.head;
  while(self.temp != NULL){
    if(self.temp.next.item == thingRemoved.item){
      node* temp2 = self.temp.next.next;
      self.temp.next = temp2;
    }
    self.temp = self.temp.next;
  }
}

-(void) rRemove: (NSString*) itemGiven nodeHead: (node*) headGiven{
  node* thingRemoved = [[node alloc] initWithString: itemGiven];
  if(headGiven.next.item == thingRemoved.item){
    node* temp2 = headGiven.next.next;
    headGiven.next = temp2;
  }else{
    return [self rRemove: itemGiven nodeHead: headGiven.next];
  }
}

-(void) iRemoveIndex: (int) index{
  self.temp = self.head;
  int counter = 0;
  while(counter < index -1){
    self.temp = self.temp.next;
    counter++;
  }
  node* temp2 = self.temp.next.next;
  self.temp.next = temp2;

}

-(void) rRemoveIndex: (int) index nodeHead: (node*) headGiven{
  if(rRemoveIndexSize == index - 1){
    node* temp2 = headGiven.next.next;
    headGiven.next = temp2;
  }else{
    rRemoveIndexSize++;
    return [self rRemoveIndex: index nodeHead: headGiven.next];
  }

}

-(int) iSize{
  int size = 0;
  self.temp = self.head;
  while(self.temp != NULL){
    size++;
    self.temp = self.temp.next;
  }
  NSLog(@"Your list found iteratively is %i items long", size);
  return size;
}

-(int) rSize: (node*) listHead{
  if(listHead == NULL){
    NSLog(@"Your list found recursively is %i items long", rInitialSize);
    return rInitialSize;
  }else{
    return rInitialSize++, [self rSize: listHead.next];
  }
}


-(void) resetRSize{
  rInitialSize = 0;
}

-(void) resetRIndexSize{
  rIndexSize = 0;
}

-(void) resetRRemoveIndexSize{
  rRemoveIndexSize = 0;
}

-(void) displayList{
  self.temp = self.head;
  while(self.temp != NULL){
    NSLog(@"%@", self.temp.item);
    self.temp = self.temp.next;
  }
}

-(void) clearList{
  self.head = NULL;
}






@end
