FRAMEWORK=oneNext_iOS
PROJECT=oneNextUniversal
BUILD=build
FRAMEWORK_PATH=$FRAMEWORK.framework

rm -Rf $FRAMEWORK_PATH
rm -Rf $BUILD

xcodebuild archive -project $PROJECT.xcodeproj -scheme $FRAMEWORK -sdk iphoneos SYMROOT=$BUILD
xcodebuild build -project $PROJECT.xcodeproj -target $FRAMEWORK -sdk iphonesimulator SYMROOT=$BUILD

cp -RL $BUILD/Release-iphoneos $BUILD/Release-universal
lipo -create $BUILD/Release-iphoneos/$FRAMEWORK_PATH/$FRAMEWORK $BUILD/Release-iphonesimulator/$FRAMEWORK_PATH/$FRAMEWORK -output $BUILD/Release-universal/$FRAMEWORK_PATH/$FRAMEWORK
cp -RL $BUILD/Release-universal/$FRAMEWORK_PATH .

rm -Rf $BUILD

echo "######################################"
echo "ARCHS :"
lipo -info oneNext_iOS.framework/oneNext_iOS_iOS
echo "######################################"
echo "bitcode (for arm64):"
otool -arch arm64 -l oneNext_iOS.framework/oneNext_iOS | grep __LLVM

echo "######################################"
echo "copying framework into ../oneNext_iOS"

cp -rf oneNext_iOS.framework ../oneNext_iOS
