//
//  main.m
//  Prog1
//
//  Created by sli19 on 9/9/18.
//  Copyright © 2018 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "linkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("Everything is running \n");
        linkedList *aList = [[linkedList alloc] init];
        int x;
        int y;
        int z;
        int p;
        int f;
        int g;
        int count = 0;
        bool run = true;
        while(run){
          if(count == 0){
            printf("Please enter a number corresponding with a selection below \n");
            printf("\n I want to ... \n 1.) Add an item to this list iteratively\n 2.) Add an item to this list recursively \n 3.) Add an item at a specific index iteratively\n 4.) Add an item at a specific index recursively \n 5.) Add an item at the beginning of your list\n 6.) Clear your list \n 7.) See if the list has your item \n 8.) Display your list\n 9.) Get an item at by a specific index \n 10.) Get the first item in your list\n 11.) Get the index of a specific item at the first occurance\n 12.) Remove an item at a specifc index iteratively \n 13.) Remove an item at a specific index recursively\n 14.) Remove the first occurance of an item iteratively \n 15.) Remove the first occurance of an item recursively\n 16.) Find out the size of your list iteratively \n 17.) Find out the size of your list recursively\n 18.) Quit out of this program");
            printf("\n Enter your number here: ");
            scanf("%i" , &x);
            printf("\n");
            if(x == 1){
              char word[40];
              printf("\nPlease enter below what word you'd like to your list\n");
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              [aList iAdd: convertedWord];
              printf("\nYour item has been added!\n");
            }
            if(x == 2){
              char word[40];
              printf("\nPlease enter below what word you'd like to your list\n");
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              [aList rAdd: convertedWord nodeHead: aList.head];
              printf("\nYour item has been added!\n");
            }
            if(x == 3){
              char word[40];
              printf("\nPlease enter below what word you'd like to your list\n");
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              [aList displayList];
              printf("\n Now at what index do you want to add your item iteratively in, please enter your choice below \n");
              printf("Enter here: ");
              scanf("%i", &y);
              while([aList iSize] - 1 < y){
                printf("\n That is not a valid number! Please enter a valid number\n");
                printf("Enter here: ");
                scanf("%i", &y);
              }
              [aList iAdd: convertedWord atIndex: y];
              printf("\nYour item has been added!\n");

            }
            if(x == 4){
              char word[40];
              printf("\nPlease enter below what word you'd like to your list\n");
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              [aList displayList];
              printf("\n Now at what index do you want to add your item recursively in, please enter your choice below \n");
              printf("Enter here: ");
              scanf("%i", &y);
              while([aList iSize] - 1 < y){
                printf("\n That is not a valid number! Please enter a valid number\n");
                printf("Enter here: ");
                scanf("%i", &y);
              }
              [aList rAdd: convertedWord atIndex: y nodeHead: aList.head];
              printf("\nYour item has been added!\n");
            }
            if(x == 5){
              char word[40];
              printf("\nPlease enter below what word you'd like to add to the beginning of your list\n");
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              [aList addFirst: convertedWord];
              printf("\nYour item has been added!\n");
            }
            if(x == 6){
              printf("\nClearing your list, are you sure?\n");
              printf("1.) YES \n Anything else for NO\n");
              printf("Enter Here: ");
              scanf("%i", &z);
              if(z == 1){
                [aList clearList];
                printf("\nYour list has been deleted\n");
              }else{
                printf("\n Okay returning to main screen!\n");
              }
            }
            if(x == 7){
              printf("\n Please type in an item to see if it's on the list!\n");
              char word[40];
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              if([aList containsObject: convertedWord]){
                printf("\n Your item is here! \n");
                [aList displayList];
              }else{
                printf("\n Your item is not here! \n");
              }
            }
            if(x == 8){
              [aList displayList];
            }
            if(x == 9){
              printf("\n Now at what index do you want to know what item is there, please enter your choice below \n");
              printf("Enter here: ");
              scanf("%i", &p);
              while([aList iSize] - 1 < p){
                printf("\n That is not a valid number! Please enter a valid number\n");
                printf("Enter here: ");
                scanf("%i", &p);
              }
              [aList getElement: p];

            }
            if(x == 10){
              if([aList getFirst] == NULL){
                printf("Your list is empty!\n");
              }else{
                NSLog(@"Your first item is %@", [aList getFirst]);
              }
            }
            if(x == 11){
              printf("\n Please type in an item to see the first time it appears in your list!\n");
              char word[40];
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              [aList indexOf: convertedWord];
            }
            if(x == 12){
              printf("\n Please enter the index of the item in which you want to remove iteratively \n");
              printf("Enter here: ");
              scanf("%i", &f);
              while([aList iSize] - 1 < f){
                printf("\n That is not a valid number! Please enter a valid number\n");
                printf("Enter here: ");
                scanf("%i", &f);
              }
              [aList iRemoveIndex: f];
              printf("\nYour item has been removed!\n");
            }
            if(x == 13){
              printf("\n Please enter the index of the item in which you want to remove recursively \n");
              printf("Enter here: ");
              scanf("%i", &g);
              while([aList iSize] - 1 < g){
                printf("\n That is not a valid number! Please enter a valid number\n");
                printf("Enter here: ");
                scanf("%i", &g);
              }
              [aList rRemoveIndex: g nodeHead: aList.head];
              printf("\nYour item has been removed!\n");

            }
            if(x == 14){
              printf("\n Please type in an item to remove the first occurance iteratively!\n");
              char word[40];
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              if(![aList containsObject: convertedWord]){
                printf("\n That item is not on the list! \n");
              }else{
                [aList iRemove: convertedWord];
                printf("\n Your item has been deleted!\n");
              }
            }
            if(x == 15){
              printf("\n Please type in an item to remove the first occurance recursively!\n");
              char word[40];
              scanf("%s", word);
              NSString* convertedWord = [NSString stringWithCString: word encoding: 1];
              if(![aList containsObject: convertedWord]){
                printf("\n That item is not on the list! \n");
              }else{
                [aList rRemove: convertedWord nodeHead: aList.head];
                printf("\n Your item has been deleted!\n");
              }
            }
            if(x == 16){
              [aList iSize];
            }
            if(x == 17){
              [aList rSize: aList.head];
            }
            if(x == 18){
              printf("\n Thank you! Good Bye! \n");
              run = false;
            }

          }
        }
    }
    return 0;
}
