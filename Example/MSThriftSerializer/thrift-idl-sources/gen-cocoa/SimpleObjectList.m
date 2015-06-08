/**
 * Autogenerated by Thrift Compiler (0.9.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TApplicationException.h"
#import "TProtocolException.h"
#import "TProtocolUtil.h"
#import "TProcessor.h"
#import "TObjective-C.h"
#import "TBase.h"

#import "SimpleObject.h"

#import "SimpleObjectList.h"

@implementation SimpleObjectList

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithSomeIdentifier: (NSString *) someIdentifier objects: (NSMutableArray *) objects
{
  self = [super init];
  __someIdentifier = [someIdentifier retain_stub];
  __someIdentifier_isset = YES;
  __objects = [objects retain_stub];
  __objects_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"someIdentifier"])
  {
    __someIdentifier = [[decoder decodeObjectForKey: @"someIdentifier"] retain_stub];
    __someIdentifier_isset = YES;
  }
  if ([decoder containsValueForKey: @"objects"])
  {
    __objects = [[decoder decodeObjectForKey: @"objects"] retain_stub];
    __objects_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__someIdentifier_isset)
  {
    [encoder encodeObject: __someIdentifier forKey: @"someIdentifier"];
  }
  if (__objects_isset)
  {
    [encoder encodeObject: __objects forKey: @"objects"];
  }
}

- (void) dealloc
{
  [__someIdentifier release_stub];
  [__objects release_stub];
  [super dealloc_stub];
}

- (NSString *) someIdentifier {
  return [[__someIdentifier retain_stub] autorelease_stub];
}

- (void) setSomeIdentifier: (NSString *) someIdentifier {
  [someIdentifier retain_stub];
  [__someIdentifier release_stub];
  __someIdentifier = someIdentifier;
  __someIdentifier_isset = YES;
}

- (BOOL) someIdentifierIsSet {
  return __someIdentifier_isset;
}

- (void) unsetSomeIdentifier {
  [__someIdentifier release_stub];
  __someIdentifier = nil;
  __someIdentifier_isset = NO;
}

- (NSMutableArray *) objects {
  return [[__objects retain_stub] autorelease_stub];
}

- (void) setObjects: (NSMutableArray *) objects {
  [objects retain_stub];
  [__objects release_stub];
  __objects = objects;
  __objects_isset = YES;
}

- (BOOL) objectsIsSet {
  return __objects_isset;
}

- (void) unsetObjects {
  [__objects release_stub];
  __objects = nil;
  __objects_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setSomeIdentifier: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_LIST) {
          int _size0;
          [inProtocol readListBeginReturningElementType: NULL size: &_size0];
          NSMutableArray * fieldValue = [[NSMutableArray alloc] initWithCapacity: _size0];
          int _i1;
          for (_i1 = 0; _i1 < _size0; ++_i1)
          {
            SimpleObject *_elem2 = [[SimpleObject alloc] init];
            [_elem2 read: inProtocol];
            [fieldValue addObject: _elem2];
            [_elem2 release_stub];
          }
          [inProtocol readListEnd];
          [self setObjects: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"SimpleObjectList"];
  if (__someIdentifier_isset) {
    if (__someIdentifier != nil) {
      [outProtocol writeFieldBeginWithName: @"someIdentifier" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __someIdentifier];
      [outProtocol writeFieldEnd];
    }
  }
  if (__objects_isset) {
    if (__objects != nil) {
      [outProtocol writeFieldBeginWithName: @"objects" type: TType_LIST fieldID: 2];
      {
        [outProtocol writeListBeginWithElementType: TType_STRUCT size: [__objects count]];
        int i4;
        for (i4 = 0; i4 < [__objects count]; i4++)
        {
          [[__objects objectAtIndex: i4] write: outProtocol];
        }
        [outProtocol writeListEnd];
      }
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"SimpleObjectList("];
  [ms appendString: @"someIdentifier:"];
  [ms appendFormat: @"\"%@\"", __someIdentifier];
  [ms appendString: @",objects:"];
  [ms appendFormat: @"%@", __objects];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end


@implementation SimpleObjectListConstants
+ (void) initialize {
}
@end

