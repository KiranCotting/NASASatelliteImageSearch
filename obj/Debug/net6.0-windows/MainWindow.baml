   M S B A M L   `   `   `  ����S  OGuardianInterviewProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:GuardianInterviewProjectGuardianInterviewProject  5      )    #GuardianInterviewProject.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      8local&clr-namespace:GuardianInterviewProject     5        � Title$!  NASA Landsat 8 Image Search��5      $	��500��6)   $	��750��66   .��5	      ��  �� Orientation$ 
Horizontal=�6   .+�5
   
   �� 
�������
�������$��1q�6>    �� CornerRadius$ 8,8,3,3��6R   ._�5      �� $	��250��6   .+�5      �  � RowDefinitions 5      �� 5      $��* �6(   �� 5      $��* �6(   �� 5      $��* �6(   �� 5      $��* �6(   .+�5      ]� $��0��6    .+�5      ��  � ToolTip$, &The latitude of the image to retrieve.��6    .��6Q   
Latitude6[   �� 5      -   5         ��Name$ latitude��5   "   $, &The latitude of the image to retrieve.��64   $��5q�6e   $	��1.5��6�   6�   5      ]� 5      $��1��6    .+�5      �� $- 'The longitude of the image to retrieve.��6    .��6R   	Longitude6]   �� 5      -   5        $ 	longitude��5   "   $- 'The longitude of the image to retrieve.��65   $��5q�6g   $��100.75��6�   6�   5      ]� 5      $��2��6    .+�5      �� $x rThe date to look for an image. May grab images that are close to the specified date, rather than exactly matching.��6    .��6�   Date6�   (  "System.Windows.Controls.DatePicker  5      -   5          Name$
 date��5   %   $x rThe date to look for an image. May grab images that are close to the specified date, rather than exactly matching.��63   $��5q�6�      DisplayDate$ 
2014-02-01��6�      SelectedDate 
2014-02-016�   6�   5      ]� 5      $��3��6    .+�5       �� $j dThe dimension, or zoom level, of the resulting image. Specified in degrees. Lower is more zoomed in.��6    .��6�   	Dimension6�   �� 5!      $j dThe dimension, or zoom level, of the resulting image. Specified in degrees. Lower is more zoomed in.��6"   $��40��6�   $��5q�6�   ��6�   �� 	 �� ElementName$	 slider��
 �� Path$
 Value� �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5"      -   5         ��Name$ slider��5"   !   $j dThe dimension, or zoom level, of the resulting image. Specified in degrees. Lower is more zoomed in.��61    � Value$
 0.15Q�6�    � Maximum$	 0.5Q�6�    � Minimum$ 0.005Q�6�    �� TickFrequency$ 0.005Q�6�    �� IsSnapToTickEnabled$
 True��6�   $��5q�6�   6	  5#      5$      �� 5%      -   5        $C =Click to request the specified image from NASA landsat 8 API.��5%      .��6v   Retrieve Image Data6�   �� 5&      -   5         ��Name$ resultBackground��5&   A   
�������$��2,2,2,5q�60   ._�5'      �� -   5         ��Name$ result��5'      .��6,   No image to display.6B   5(      �� 5)      
�������._�5*      �� .+�5+      �� $��15(�6    $
��Bold"�6.   $��Center=�6@   .��6]   Image Details6l   � 5,       � ColumnDefinitions 5-      �� 5.   "   $
��Auto �63   �� 5/   "   $��* �63   .+�51      �� $��0��6$   .��64   Date:6;   �� 52      -   5         ��Name$ 	imageDate��52   h   $��1��6(   $��Center=�68   $
��Wrap=�6T   6}   53      � 54       55      �� 56   "   $
��Auto �63   �� 57   "   $��* �63   .+�59      �� $��0��6$   .��64   ID:69   �� 5:      -	   5        $ imageID��5:   g   $��1��6(   $��Center=�68   $
��Wrap=�6S   6z   5;      � 5<       5=      �� 5>   "   $
��Auto �63   �� 5?   "   $��* �63   .+�5A      �� $��0��6$   .��64   
Dataset:6>   �� 5B      -
   5        $ imageDataset��5B   h   $��1��6(   $��Center=�68   $
��Wrap=�6T   6�   5C      � 5D       5E      �� 5F   "   $
��Auto �63   �� 5G   "   $��* �63   .+�5I      �� $��0��6$   .��64   
Planet::6>   �� 5J      -   5        $ imagePlanet��5J   h   $��1��6(   $��Center=�68   $
��Wrap=�6T   6   5K      � 5L       5M      �� 5N   "   $
��Auto �63   �� 5O   "   $��* �63   .+�5Q      �� $��0��6$   .��64   URL:6:   �� 5R      -   5        $ imageURL��5R   h   $��1��6(   $��Center=�68   $
��Wrap=�6T   6|   5S      5T      5U      5V      5W      �� 5X   
   -   5         ��Name$ image��5X      $��5q�6   $	��450��6*   $	��450��66   $	��Top=�6C   5Y      5Z      