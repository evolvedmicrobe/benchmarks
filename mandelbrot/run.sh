rm mandelbrot
mcs -optimize+ -platform:x86 -r:/Library/Frameworks/Mono.framework/Versions/3.4.0/lib/mono/4.0/Mono.Simd.dll -out:mandelbrot mandelbrot.cs
time mono --llvm --gc=sgen mandelbrot 16000 > out.bmp

javac mandelbrot.java
time java  -server -cp . -XX:+TieredCompilation -XX:+AggressiveOpts mandelbrot 16000 > outj.bmp
