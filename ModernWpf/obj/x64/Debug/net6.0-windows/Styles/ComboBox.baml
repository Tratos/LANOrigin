   M S B A M L   `   `   `  ����D  @ModernWpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ModernWpf.ControlsModernWpf.Controls  5      b ^PresentationFramework.Aero2, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   ComboxToggleButtonStyle �� 
TargetType �� Property �� Value  BorderColor �� 
TargetType J� SnapsToDevicePixels!    ModernWpf.Controls.IconFont   Name    Icon	 J� RenderTransformOrigin
 �� CenterX �� CenterY �� Triggers P� Property P� Value  	Win11Blue :� RoutedEvent g� 	BeginTime �� 
TargetName �� TargetProperty W� From	 W� To g� Duration �� Padding � ColumnDefinitions �� SelectionBoxItem# �� SelectionBoxItemStringFormat �� ContentStringFormat �� SelectionBoxItemTemplate J� IsHitTestVisible �� 	ClickMode �� RelativeSource �� Mode  �� Path! d� 	IsChecked" �� Mode# �Name$ � AllowsTransparency% �� IsDropDownOpen& � VerticalOffset5  /Microsoft.Windows.Themes.SystemDropShadowChrome'  Name( ��Name) � ActualWidth* �� MaxDropDownHeight+ %� IsVirtualizing, %� 
ScrollUnit- %� VirtualizationMode. K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation/   DirectionalNavigation0 P� 
SourceName1 �� 
TargetName�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      -controls clr-namespace:ModernWpf.Controls  5      UthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2  5        5      �� 5   
   $+ %/ModernWpf;component/Styles/Base.xaml?�6   %�  &	        7  7  '�� �    7  7   7  �� 5      " d�6,   .�5   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5   
    �@J�SnapsToDevicePixels$
 True��60   �� 5   
    �@�FocusVisualStyle 6-   Z� �� 5   
    � ��
 �����6'   �� 5   
    � ��8   6(   �� 5   
    � ��$ 0,1,1,1q�6,   �� 5   
    �@�Cursor$
 Hand��6#   �� 5   
    � �� 5      �� 5      " d�6"   .R�5      �� #��z��5      #��z��5      #��z��5      $
 True��5      ._�5         $ IconFont��5      $��14(�5      $
��Bold"�5      $	 ��5      $	 0.5,0.5&�5       z�5!      �� 5"   "   $	
 0.5Q�62   $	 0.5Q�6@   5$      5%       5&      P� 5'       �@J�IsMouseOver$
 True��69   . �5(      �� 8   � ��6<   �� 5)       � ��$ 2q�6@   5*      :� 5+      $ Checked��6'   .[�5,      �� .��5-   "   �� .��5.   &   W�  00:00:005/   )   $ IconFont��50   )   $9 3(UIElement.RenderTransform).(RotateTransform.Angle)�51   )    052   )    18053   )   $ 	00:00:0.2D�54   )   55   #   56      57      :� 58      $ 	Unchecked��6'   .[�59      �� .��5:   "   �� .��5;   &   W�  00:00:005<   )   $ IconFont��5=   )   $9 3(UIElement.RenderTransform).(RotateTransform.Angle)�5>   )    1805?   )    05@   )   $ 	00:00:0.2D�5A   )   5B   #   5C      5D      5F      5H      5I      �� 5K      " ��6   .�5L   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5M   
    �@J�SnapsToDevicePixels$
 True��60   �� 5N   
    �@�FocusVisualStyle 6-   Z� �� 5O   
    � ��
 �   �6'   �� 5P   
    � ��
 �����6'   �� 5Q   
    � ��$ 5q�6$   �� 5R   
    � ��$ 5q�6#   �� 5S   
    � ��$ 35��6#   �� 5T   
    � ��$ Center=�65   �� 5U   
    � ��$
 Left=�67   �� 5V   
    � �� 5W      �� 5X      " ��6   .�5Y      ��  �@�OverridesDefaultStyle$
 True��6>   �� 5Z       �@J�SnapsToDevicePixels$
 True��6<   �� 5[       �@�FocusVisualStyle 69   Z� �� 5\       � ��
 �   �63   �� 5]       � ��
 �����63   �� 5^       �@�Cursor$
 Hand��6/   �� 5_       � �� 5`      �� 5a      " ��6.   .R�5b   "   �� $��30��5c   %   $ 5,0,5,0q�5d   %   #��z��5e   %   #��z��5f   %   #��z��5g   %   ._�5h   &   �� ���#E5E5E5$��0,0,0,1q�6C   ._�5i   *   �� 5j   '   5k   #    5l   "   P� 5m   &    �@J�IsMouseOver$
 True��6E   . �5n   *   ��  � �� �#F1F1F16G   5o   '   P� 5p   &    �@��
IsSelected$
 True��6D   . �5q   *   ��  � �� �#E6E6E66G   5r   '   5t      5v      5w      5y      �� 5z   
    � �� 5{      �� 5|      " ��6"   .R�5}      �  5~      �� 5      �� 5�      $
��Auto �6/   .+�5�      �� $��0��5�      #��z��5�      8��  $��1,1,0,1q�5�      $
 True��5�      ._�5�      �� #��z��5�   !   #��z��5�   !   #��z��5�   !   #��z 5�   !   # z 5�   !   #��z 5�   !   #��z��5�   !   $ false��5�   !   # z 5�   !   5�      d� 5�      $��1��5�      $ Press=�5�      8�� ��5�      ��  �� $
 Self=�$  ActualHeight�! 5�      �� $  IsDropDownOpen�$" TwoWay=� �� *TemplatedParent+5�      � 5�      $# 
PART_Popup��5�      $	��250��5�      $	��120��5�      $
$ True��5�      $|�False��5�      #��z% 5�      $	��Top=�5�      $��Slide=�5�      $& -5��5�      .��5�        $' ShadowChrome��6;   ._�5�   "   �� $( DropDown��5�   %   #��z) 5�   %   #��z* 5�   %   8�� $��1q�5�   %   $
 True��5�   %   ._�5�   &   �� #��z* 5�   )   $
��True��5�   )   $��Disabled=�5�   )   $
 True��5�   )   $
��Auto=�5�   )   $
+ True��5�   )   $
, Item=�5�   )   $- 	Recycling=�5�   )   .��5�   *   �� 
�������$
. True��5�   -   $/ 	Contained=�5�   -   5�   '   5�   #   5�      5�      5�       5�      P� 5�      $0 
PART_Popup��6"    �@�HasDropShadow$
 True��6S   . �5�      �� $1 ShadowChrome��6%    � ��$ 0,0,5,5q�6Q   �� 5�      $1 ShadowChrome��6%    �@ Color$ 	#71000000��6P   5�      5�      5�      5�      5�      