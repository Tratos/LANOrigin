   M S B A M L   `   `   `  ����D  @ModernWpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:ModernWpf.ControlsModernWpf.Controls  5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels J� Effect3   -System.Windows.Media.Effects.DropShadowEffect    
BlurRadius    	Direction	    Opacity
    ShadowDepth    Color K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation   DirectionalNavigation �� Triggers P� Property P� Value �� 
TargetName � ColumnDefinitions!   ModernWpf.Controls.IconFont  Name m� Icon   Icon ��Name�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      -controls clr-namespace:ModernWpf.Controls  5      %�	  '��       (�� b    5-      *MenuItem.SeparatorStyleKey+)'m� �    �� 5      "  ��6   .�5   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5   
    �@J�SnapsToDevicePixels$
 True��60   �� 5	   
    �@�IsSharedSizeScope$
 True��63   �� 5
   
    � |�$ False��6&   �� 5   
    �@��HasDropShadow$
 True��6*   �� 5   
    � �� 5      �� 5      " ��6"   .R�5      �� $��Border��5      $	��160��5      $��0,0,7,7q�5      $ 5q�5      ���#FAFAFA���#4F4D4B$��1q�5      $
 True��5       5         5      $ 5Q�5   !   $	 315Q�5   !   $		 0.6Q�5   !   $
 5Q�5   !   $ Black��5   !   ._�5       �� $
 True��6%   $ Cycle=�68   5!       5"      P� 5#       �@��HasDropShadow$
 True��6;   . �5$      �� $ Border��6%    �@��Padding$ 0,3,0,3q�6L   5%      5'      5)      5*      �� 5-      "  ��6:   .�5.   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5/   
    � ��$ 0,5,0,5q�6#   �� 50   
    � �� 51      �� 52      " ��6"   .R�53      �� ���#DADADA$��0,1,0,0q�55      $
 True��56      57      59      5:      �� 5<      "  m�6   .�5=   
   ��  �@�OverridesDefaultStyle$
 True��62   �� 5>   
    � �� �#FAFAFA6'   �� 5?   
    � �� �#0000006'   �� 5@   
    � ��$ 0q�6#   �� 5A   
    � ��$ 5,0,5,0q�6$   �� 5B   
    � �� 5C      �� 5D      " m�6"   .R�5E      �� $��26��5F      #��z��5G      # z��5H      #��z��5I      #��z��5J      $��0q�5K      $
 True��5L      ._�5M      �  5N      �� 5O   "   $��28 �63   �� 5P   "   .+�5S        $
 Icon��5T   !   $��Center=�5U   !   $��Center=�5V   !   $��14(�5W   !   # z 5X   !   �� 5Z      $ 
HeaderHost��5[   !   $��1��5\   !   #��z��5]   !   $��Center=�5^   !   $��Header��5_   !   $
��True��5`   !   5a      5b       5c      P� 5f       �@m�Role$ TopLevelHeader=�62   P� 5h       �@m�Role$ TopLevelItem=�62   P� 5j       �@m�Role$ SubmenuHeader=�62   P� 5l       �@m�Role$ SubmenuItem=�62   P� 5n       �@m�IsHighlighted$
 True��6;   . �5o      ��  � �� �#E6E6E66;   5p      P� 5q       � {�$ False��67   . �5r      ��  �@J�Opacity$	 0.5Q�68   5s      5u      5w      5x      5z      