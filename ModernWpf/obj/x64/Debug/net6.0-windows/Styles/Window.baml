   M S B A M L   `   `   `  ����D  @ModernWpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ModernWpf.ControlsModernWpf.Controls  5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   SystemWindowStyle  �� 
TargetType    ModernWpf.Controls.Window �� Property �� Value �� 
TargetType J� SnapsToDevicePixels �Name � RowDefinitions    CaptionHeight    CaptionBackground	 � ColumnDefinitions
 �� Orientation �� BitmapScalingMode � Icon � Title'  !System.Windows.Shell.WindowChrome   IsHitTestVisibleInChrome"   ModernWpf.Controls.WinButton  Name   Icon   OverBackground   OverForeground   PressedBackground   PressedForeground � ToolTip ��Name J� IsHitTestVisible J� Opacity �� Triggers P� Property P� Value �� 
TargetName �� Source �� Path �� Value  �� Binding! �� RelativeSource" N� EnterActions# g� 	BeginTime$ �� 
TargetName% �� TargetProperty& W� From	' W� To( g� Duration) W� EasingFunction.  (System.Windows.Media.Animation.PowerEase7  1System.Windows.Media.Animation.EasingFunctionBase*   
EasingMode+ N� ExitActions  CustomSystemWindowStyle,    TitleContent  FitSystemWindowStyle�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      -controls clr-namespace:ModernWpf.Controls  5      %
+  &	        &	 2    &	 �    �� 5      "    6&   .�5   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5	   
    �@J�SnapsToDevicePixels$
 True��60   �� 5
   
    �@�FocusVisualStyle 6-   Z� �� 5   
    � �� �#0000006'   �� 5   
    � �� �#4F4D4B6(   �� 5   
    � �� �#FDFDFD6'   �� 5   
    �@  CaptionBackground �#FAFAFA6.   �� 5   
    �@  IsShowMaskLayer$ False��6,   �� 5   
    � �� 5      �� 5      "   6"   .R�5      �� #��z��5      #��z��5      $��1q�5      $
 True��5      ._�5      � $ WorkArea��6    5      �� 5   "   $
��Auto �60   �� 5   "   .+�5      �� $��1��6/   .u�5   "   �� 5       � 5"      #��z 6#   #��z 6L   	 5#   "   �� 5$   &   �� 5%   &   $
��Auto �67   .+�5'   "   �� $
 
Horizontal=�6-   .+�5(   &   �� $��18��5)   )   $��18��5*   )   $��7,0,0,0q�5+   )   $��Center=�5,   )   $ HighQuality=�5-   )   #��z 5.   )   �� 5/   &   $��7,0,0,0q�50   )   $��Center=�51   )   #��z 52   )   53   #   �� 54   "   $��1��55   %   $
 
Horizontal=�56   %   $
 True��57   %   $
 True��58   %   .+�59   &     $ 	ButtonMin��5:   )   $*��$SystemCommands.MinimizeWindowCommand��5;   )   $	 ��5<   )   $ #DBDBDB��5=   )   $ Black��5>   )   $ #C2C2C2��5?   )   $ Black��5@   )   $ 	最小化��5A   )     5B   &   $ 	ButtonMax��5C   )   $*��$SystemCommands.MaximizeWindowCommand��5D   )   $	 ��5E   )   $ #DBDBDB��5F   )   $ Black��5G   )   $ #C2C2C2��5H   )   $ Black��5I   )   $ 	最大化��5J   )     5K   &   $ ButtonRestore��5L   )   $)��#SystemCommands.RestoreWindowCommand��5M   )   $	 ��5N   )   $ #DBDBDB��5O   )   $ Black��5P   )   $ #C2C2C2��5Q   )   $ Black��5R   )   $ 向下还原��5S   )     5T   &   $ ButtonClose��5U   )   $'��!SystemCommands.CloseWindowCommand��5V   )   $	 ��5W   )   $ #E81123��5X   )   $ White��5Y   )   $ #F1707A��5Z   )   $ Black��5[   )   $ 关闭��5\   )   5]   #   5^      �� 5`      $ 	MaskLayer��5a   !   $��2��5b   !   
���   �$ False��5d   !   $ 0Q�5e   !   5f      5g       5h      P� 5i       �@�WindowState$ 	Maximized=�69   . �5j      �� $ WorkArea��6%    6O   �� # Zo�$ Width� � ���� 5k      $ WorkArea��6%    6P   �� # Zo�$ Height� � ���� 5l      $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5m      $ ButtonRestore��6%    � y�$ Visible=�6V   5n      P� 5o       �@�WindowState$ Normal=�69   . �5p      �� $ 	ButtonMax��6%    � y�$ Visible=�6R   �� 5q      $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5r      P� 5s       �@�
ResizeMode$ NoResize=�68   . �5t      �� $ 	ButtonMin��6%    � y�$ 	Collapsed=�6R   �� 5u      $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5v      $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5w      P� 5x       �@�
ResizeMode$ CanMinimize=�68   . �5y      �� $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5z      $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5{      �� 5|      $
 True��6u     6&   �� ! �� *Self+$ IsShowMaskLayer�" 5}      �� 5~   "   .��5   &   �� .��5�   *   W� # 00:00:005�   -   $$ 	MaskLayer��5�   -   $% Opacity�5�   -   & 05�   -   ' 0.55�   -   $( 	00:00:0.2D�5�   -   ) 5�   .     5�   2   $* 	EaseInOut=�6<   5�   +   5�   '   5�   #   + 5�      �� 5�   "   .��5�   &   �� .��5�   *   W� # 00:00:005�   -   $$ 	MaskLayer��5�   -   $% Opacity�5�   -   & 0.55�   -   ' 05�   -   $( 	00:00:0.2D�5�   -   ) 5�   .     5�   2   $* 	EaseInOut=�6<   5�   +   5�   '   5�   #   5�      5�      5�      5�      �� 5�      "    6,   .�5�   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5�   
    �@J�SnapsToDevicePixels$
 True��60   �� 5�   
    �@�FocusVisualStyle 6-   Z� �� 5�   
    � �� �#0000006'   �� 5�   
    � �� �#4F4D4B6(   �� 5�   
    � �� �#FDFDFD6'   �� 5�   
    �@  CaptionBackground �#FAFAFA6.   �� 5�   
    �@  IsShowMaskLayer$ False��6,   �� 5�   
    � �� 5�      �� 5�      "   6"   .R�5�      �� #��z��5�      #��z��5�      $��1q�5�      $
 True��5�      ._�5�      � $ WorkArea��6    5�      �� 5�   "   $
��Auto �60   �� 5�   "   .+�5�      �� $��1��6/   .u�5�   "   �� 5�      � 5�      #��z 6#   #��z 6L   	 5�   "   �� 5�   &   �� 5�   &   $
��Auto �67   .+�5�   "   �� #��z, 63   �� 5�   "   $��1��5�   %   $��Right=�5�   %   $	��Top=�5�   %   $
 
Horizontal=�5�   %   $
 True��5�   %   $
 True��5�   %   .+�5�   &     $ 	ButtonMin��5�   )   $*��$SystemCommands.MinimizeWindowCommand��5�   )   $	 ��5�   )   $ #DBDBDB��5�   )   $ Black��5�   )   $ #C2C2C2��5�   )   $ Black��5�   )   $ 	最小化��5�   )     5�   &   $ 	ButtonMax��5�   )   $*��$SystemCommands.MaximizeWindowCommand��5�   )   $	 ��5�   )   $ #DBDBDB��5�   )   $ Black��5�   )   $ #C2C2C2��5�   )   $ Black��5�   )   $ 	最大化��5�   )     5�   &   $ ButtonRestore��5�   )   $)��#SystemCommands.RestoreWindowCommand��5�   )   $	 ��5�   )   $ #DBDBDB��5�   )   $ Black��5�   )   $ #C2C2C2��5�   )   $ Black��5�   )   $ 向下还原��5�   )     5�   &   $ ButtonClose��5�   )   $'��!SystemCommands.CloseWindowCommand��5�   )   $	 ��5�   )   $ #E81123��5�   )   $ White��5�   )   $ #F1707A��5�   )   $ Black��5�   )   $ 关闭��5�   )   5�   #   5�      �� 5�      $ 	MaskLayer��5�   !   $��2��5�   !   
���   �$ False��5�   !   $ 0Q�5�   !   5�      5�       5�      P� 5�       �@�WindowState$ 	Maximized=�69   . �5      �� $ WorkArea��6%    6O   �� # Zo�$ Width� � ���� 5     $ WorkArea��6%    6P   �� # Zo�$ Height� � ���� 5     $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5     $ ButtonRestore��6%    � y�$ Visible=�6V   5     P� 5      �@�WindowState$ Normal=�69   . �5     �� $ 	ButtonMax��6%    � y�$ Visible=�6R   �� 5     $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5     P� 5	      �@�
ResizeMode$ NoResize=�68   . �5
     �� $ 	ButtonMin��6%    � y�$ 	Collapsed=�6R   �� 5     $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5     $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5     P� 5      �@�
ResizeMode$ CanMinimize=�68   . �5     �� $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5     $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5     �� 5     $
 True��6u     6&   �� ! �� *Self+$ IsShowMaskLayer�" 5     �� 5  "   .��5  &   �� .��5  *   W� # 00:00:005  -   $$ 	MaskLayer��5  -   $% Opacity�5  -   & 05  -   ' 0.55  -   $( 	00:00:0.2D�5  -   ) 5  .     5  2   $* 	EaseInOut=�6<   5   +   5!  '   5"  #   + 5$     �� 5%  "   .��5&  &   �� .��5'  *   W� # 00:00:005(  -   $$ 	MaskLayer��5)  -   $% Opacity�5*  -   & 0.55+  -   ' 05,  -   $( 	00:00:0.2D�5-  -   ) 5.  .     5/  2   $* 	EaseInOut=�6<   51  +   52  '   53  #   55     57     59     5:     �� 5=     "    6)   .�5>  
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5?  
    �@J�SnapsToDevicePixels$
 True��60   �� 5@  
    �@�FocusVisualStyle 6-   Z� �� 5A  
    � �� �#0000006'   �� 5B  
    � �� �#4F4D4B6(   �� 5C  
    � �� �#FAFAFA6'   �� 5D  
    �@  CaptionBackground �#FAFAFA6.   �� 5E  
    � �� 5F     �� 5G     "   6"   .R�5H     �� #��z��5I     #��z��5J     $��1q�5K     $
 True��5L     ._�5M     � $ WorkArea��6   .+�5O     �� .u�5P  "   �� 5Q     �� 5S     $��Right=�5T  !   $	��Top=�5U  !   $
 
Horizontal=�5V  !   $
 True��5W  !   $
 True��5X  !   .+�5Y  "     $ 	ButtonMin��5Z  %   $*��$SystemCommands.MinimizeWindowCommand��5[  %   $	 ��5\  %   $ #DBDBDB��5]  %   $ Black��5^  %   $ #C2C2C2��5_  %   $ Black��5`  %   $ 	最小化��5a  %     5b  "   $ 	ButtonMax��5c  %   $*��$SystemCommands.MaximizeWindowCommand��5d  %   $	 ��5e  %   $ #DBDBDB��5f  %   $ Black��5g  %   $ #C2C2C2��5h  %   $ Black��5i  %   $ 	最大化��5j  %     5k  "   $ ButtonRestore��5l  %   $)��#SystemCommands.RestoreWindowCommand��5m  %   $	 ��5n  %   $ #DBDBDB��5o  %   $ Black��5p  %   $ #C2C2C2��5q  %   $ Black��5r  %   $ 向下还原��5s  %     5t  "   $ ButtonClose��5u  %   $'��!SystemCommands.CloseWindowCommand��5v  %   $	 ��5w  %   $ #E81123��5x  %   $ White��5y  %   $ #F1707A��5z  %   $ Black��5{  %   $ 关闭��5|  %   5}     �� 5     $ 	MaskLayer��5�  !   
���   �$ False��5�  !   $ 0Q�5�  !   5�     5�      5�     P� 5�      �@�WindowState$ 	Maximized=�69   . �5�     �� $ WorkArea��6%    6O   �� # Zo�$ Width� � ���� 5�     $ WorkArea��6%    6P   �� # Zo�$ Height� � ���� 5�     $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5�     $ ButtonRestore��6%    � y�$ Visible=�6V   5�     P� 5�      �@�WindowState$ Normal=�69   . �5�     �� $ 	ButtonMax��6%    � y�$ Visible=�6R   �� 5�     $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5�     P� 5�      �@�
ResizeMode$ NoResize=�68   . �5�     �� $ 	ButtonMin��6%    � y�$ 	Collapsed=�6R   �� 5�     $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5�     $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5�     P� 5�      �@�
ResizeMode$ CanMinimize=�68   . �5�     �� $ 	ButtonMax��6%    � y�$ 	Collapsed=�6R   �� 5�     $ ButtonRestore��6%    � y�$ 	Collapsed=�6V   5�     �� 5�     $
 True��6u     6&   �� ! �� *Self+$ IsShowMaskLayer�" 5�     �� 5�  "   .��5�  &   �� .��5�  *   W� # 00:00:005�  -   $$ 	MaskLayer��5�  -   $% Opacity�5�  -   & 05�  -   ' 0.55�  -   $( 	00:00:0.2D�5�  -   ) 5�  .     5�  2   $* 	EaseInOut=�6<   5�  +   5�  '   5�  #   + 5�     �� 5�  "   .��5�  &   �� .��5�  *   W� # 00:00:005�  -   $$ 	MaskLayer��5�  -   $% Opacity�5�  -   & 0.55�  -   ' 05�  -   $( 	00:00:0.2D�5�  -   ) 5�  .     5�  2   $* 	EaseInOut=�6<   5�  +   5�  '   5�  #   5�     5�     5�     5�     5�     