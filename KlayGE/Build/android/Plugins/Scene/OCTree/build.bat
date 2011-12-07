set PATH=%PATH%;%ANDROID_NDK%

REM Workaround for NDK r7
mkdir obj
mkdir obj\local
mkdir obj\local\armeabi
mkdir obj\local\armeabi-v7a
copy "%ANDROID_NDK%\sources\cxx-stl\gnu-libstdc++\libs\armeabi\libgnustl_static.a" obj\local\armeabi\
copy "%ANDROID_NDK%\sources\cxx-stl\gnu-libstdc++\libs\armeabi-v7a\libgnustl_static.a" obj\local\armeabi-v7a\

ndk-build

copy /Y libs\armeabi\libKlayGE_Scene_OCTree_gcc.so ..\..\..\..\..\bin\android_armeabi\Scene\
copy /Y libs\armeabi-v7a\libKlayGE_Scene_OCTree_gcc.so ..\..\..\..\..\bin\android_armeabi-v7a\Scene\