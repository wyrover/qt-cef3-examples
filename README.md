# qt-cef3-examples


1. 编译 cef 生成 libcef_dll_wrapper.lib
2. 链接 libcef.lib libcef_dll_wrapper.lib
3. 使用 qt5.7.1 (最后支持 xp 的版本)    
4. 如果 qt 使用的静态版本，MT 方式编译，则工程改为 MT 方式
5. 链接

```
qtmain.lib
Qt5Core.lib
Qt5Gui.lib
Qt5Widgets.lib
qtpcre.lib
qtpng.lib
qtharfbuzzng.lib
opengl32.lib
Qt5PlatformSupport.lib
qwindows.lib
Imm32.lib
Winmm.lib
qtfreetype.lib
```

附加库目录
```
$(QTDIR)\lib
$(QTDIR)\plugins\platforms
```




