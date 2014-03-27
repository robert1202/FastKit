




#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (AssociatedObjects)

- (void)associateValue:(id)value withKey:(const void *)key;
+ (void)associateValue:(id)value withKey:(const void *)key;

- (void)atomicallyAssociateValue:(id)value withKey:(const void *)key;
+ (void)atomicallyAssociateValue:(id)value withKey:(const void *)key;


- (void)associateCopyOfValue:(id)value withKey:(const void *)key;
+ (void)associateCopyOfValue:(id)value withKey:(const void *)key;


- (void)atomicallyAssociateCopyOfValue:(id)value withKey:(const void *)key;
+ (void)atomicallyAssociateCopyOfValue:(id)value withKey:(const void *)key;


- (void)weaklyAssociateValue:(id)value withKey:(const void *)key;
+ (void)weaklyAssociateValue:(id)value withKey:(const void *)key;


- (id)associatedValueForKey:(const void *)key;
+ (id)associatedValueForKey:(const void *)key;

- (void)removeAllAssociatedObjects;
+ (void)removeAllAssociatedObjects;

@end
