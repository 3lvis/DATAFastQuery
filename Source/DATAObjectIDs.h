@import CoreData;

@interface DATAObjectIDs : NSObject
+ (NSDictionary *)objectIDsInEntityNamed:(NSString *)entityName
                     withAttributesNamed:(NSString *)attributeName
                                 context:(NSManagedObjectContext *)context;

+ (NSDictionary *)objectIDsInEntityNamed:(NSString *)entityName
                     withAttributesNamed:(NSString *)attributeName
                                 context:(NSManagedObjectContext *)context
                               predicate:(NSPredicate *)predicate;

+ (NSDictionary *)objectIDsInEntityNamed:(NSString *)entityName
                     withAttributesNamed:(NSString *)attributeName
                                 context:(NSManagedObjectContext *)context
                               predicate:(NSPredicate *)predicate
                         sortDescriptors:(NSArray<NSSortDescriptor *> *)sortDescriptors;

+ (NSArray *)objectIDsInEntityNamed:(NSString *)entityName
                            context:(NSManagedObjectContext *)context;

+ (NSArray *)objectIDsInEntityNamed:(NSString *)entityName
                            context:(NSManagedObjectContext *)context
                          predicate:(NSPredicate *)predicate;

+ (NSArray *)attributesInEntityNamed:(NSString *)entityName
                       attributeName:(NSString *)attributeName
                             context:(NSManagedObjectContext *)context
                           predicate:(NSPredicate *)predicate
                     sortDescriptors:(NSArray<NSSortDescriptor *> *)sortDescriptors;
@end
