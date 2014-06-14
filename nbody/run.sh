#Time Original C#
rm nbody.csharp.old
mcs -optimize+ -platform:x86  -out:nbody.csharp.old nbody_old.cs
time mono --llvm --gc=sgen nbody.csharp.old 50000000

#Time C#
rm nbody.csharp
mcs -optimize+ -platform:x86 -r:/Library/Frameworks/Mono.framework/Versions/3.4.0/lib/mono/4.0/Mono.Simd.dll -out:nbody.csharp nbody.cs
time mono --llvm --gc=sgen nbody.csharp 50000000

#Now Java
rm nbody.class
javac nbody.java
time java  -server -cp . -XX:+TieredCompilation -XX:+AggressiveOpts nbody 50000000