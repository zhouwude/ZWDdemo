//
//  Card+CoreDataProperties.h
//  
//
//  Created by 周武德 on 15/9/21.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Card (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *no;
@property (nullable, nonatomic, retain) NSManagedObject *persion;

@end

NS_ASSUME_NONNULL_END
