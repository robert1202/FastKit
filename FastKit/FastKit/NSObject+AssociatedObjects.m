



#import "NSObject+AssociatedObjects.h"


@implementation NSObject (AssociatedObjects)

- (void)associateValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)atomicallyAssociateValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN);
}

- (void)associateCopyOfValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)atomicallyAssociateCopyOfValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_COPY);
}

- (void)weaklyAssociateValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_ASSIGN);
}

- (id)associatedValueForKey:(const void *)key {
	return objc_getAssociatedObject(self, key);
}

- (void)removeAllAssociatedObjects {
	objc_removeAssociatedObjects(self);
}

#pragma mark -
#pragma mark <#Label#>

+ (void)associateValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (void)atomicallyAssociateValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN);
}

+ (void)associateCopyOfValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

+ (void)atomicallyAssociateCopyOfValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_COPY);
}

+ (void)weaklyAssociateValue:(id)value withKey:(const void *)key {
	objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_ASSIGN);
}

+ (id)associatedValueForKey:(const void *)key {
	return objc_getAssociatedObject(self, key);
}

+ (void)removeAllAssociatedObjects {
	objc_removeAssociatedObjects(self);
}

@end
