@import Foundation;
@import CoreData;

@interface User : NSManagedObject

@property (nonatomic, retain) NSNumber * remoteID;
@property (nonatomic, retain) NSString * name;

@end
