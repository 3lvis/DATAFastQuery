@import XCTest;

#import "NSManagedObject+ANDYObjectIDs.h"

#import "User.h"

@interface Tests : XCTestCase

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end

@implementation Tests

#pragma mark - Set up

- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext) return _managedObjectContext;

    NSURL *modelURL = [[NSBundle bundleForClass:[self class]] URLForResource:@"Tests" withExtension:@"momd"];
    NSManagedObjectModel *model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
    [psc addPersistentStoreWithType:NSInMemoryStoreType
                      configuration:nil
                                URL:nil
                            options:nil
                              error:nil];

    _managedObjectContext = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    _managedObjectContext.persistentStoreCoordinator = psc;

    return _managedObjectContext;
}

- (void)tearDown
{
    [self.managedObjectContext rollback];

    [super tearDown];
}

- (void)testDictionary
{
    User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User"
                                               inManagedObjectContext:self.managedObjectContext];
    user.userID = @1;
    user.name = @"Joshua Ivanof";
    [self.managedObjectContext save:nil];

    NSDictionary *dictionary = [NSManagedObject andy_dictionaryOfIDsAndFetchedIDsInContext:self.managedObjectContext
                                                                             usingLocalKey:@"userID"
                                                                             forEntityName:@"User"];

    XCTAssertNotNil(dictionary);
    XCTAssertTrue(dictionary.count == 1);
    XCTAssertEqualObjects(dictionary[@1], user.objectID);

    NSManagedObjectID *objectID = dictionary[@1];
    User *retreivedUser = (User *)[self.managedObjectContext objectWithID:objectID];
    XCTAssertEqualObjects(retreivedUser.userID, @1);
}

@end
