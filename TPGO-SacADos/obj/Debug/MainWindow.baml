   M S B A M L   `   `   `  ����O  KMaterialDesignColors, Version=1.1.3.0, Culture=neutral, PublicKeyToken=nullY@clr-namespace:MaterialDesignColors;assembly=MaterialDesignColorsMaterialDesignColors  5   R   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=null{Sclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf#MaterialDesignThemes.Wpf.Converters 5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M4clr-namespace:System.Globalization;assembly=mscorlibSystem.Globalization 5   	   U QGraphSharp.Controls, Version=1.0.3438.42202, Culture=neutral, PublicKeyToken=nullV>clr-namespace:GraphSharp.Controls;assembly=GraphSharp.ControlsGraphSharp.Controls 5   	   O KWPFExtensions, Version=1.0.3437.34043, Culture=neutral, PublicKeyToken=nullV;clr-namespace:WPFExtensions.Controls;assembly=WPFExtensionsWPFExtensions.Controls 5	   	    TPGO-SacADos   TPGO_ConneX.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml   	  5   	   FmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   [MaterialDesignColors@clr-namespace:MaterialDesignColors;assembly=MaterialDesignColors  6R   U
 QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls 
 5   	   d
ConvertersSclr-namespace:MaterialDesignThemes.Wpf.Converters;assembly=MaterialDesignThemes.Wpf 
 5   	   :d2http://schemas.microsoft.com/expression/blend/2008 
 6p   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006 
 6�   HGlobalization4clr-namespace:System.Globalization;assembly=mscorlib 
 5   	   O
graphsharp>clr-namespace:GraphSharp.Controls;assembly=GraphSharp.Controls 
 5   	   Fzoom;clr-namespace:WPFExtensions.Controls;assembly=WPFExtensions 
 5	   	   -   5        ( 
 "MahApps.Metro.Controls.MetroWindow   Name$  Frame��5   �    � Title$ ConneX Graph��5
   	   $	��600��6   $	��900��6+      MaterialDesignBody#���   5      ���	#FFFAFAFA$��Medium"�5   	   $��14(�5   	   $X��Rpack://application:,,,/MaterialDesignThemes.Wpf;component/Resources/Roboto/#Roboto)�5   	    � 
ResizeMode$ CanMinimize=�6i    � WindowStartupLocation$ CenterScreen=�6�      	GlowBrush �	#FF060000   WindowTitleBrush
 �   � � 	Resources 5      '  !GraphSharp.Controls.VertexControl �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� CornerRadius �� Padding   Vertex J� OpacityMask J� Effect3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   Color   Opacity   	Direction%  GraphSharp.Controls.EdgeControl �� 	Resources  Key  ToolTipContent  ButtonStyle1 J� SnapsToDevicePixels �� StrokeDashArray  PrimaryHueMidBrush   PrimaryHueMidForegroundBrush+  %MaterialDesignThemes.Wpf.RippleAssist+  %MaterialDesignThemes.Wpf.ShadowAssist � 	Resources �� TargetProperty �� 
TargetName<  6System.Windows.Media.Animation.EasingThicknessKeyFrame p� KeyTime p� Value9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value �Name J� RenderTransformOrigin  J� 	CacheMode! �� RelativeSource" ��Name# �� Path$ �� 	Converter9	  3MaterialDesignThemes.Wpf.Converters.ShadowConverter  MaterialDesignBackground% J� Opacity& `� UpdateSourceTrigger' `� 	Converter>
  8MaterialDesignThemes.Wpf.Converters.RangeLengthConverter( �� AncestorLevel) �� AncestorType%  MaterialDesignThemes.Wpf.Ripple* �� Triggers+ P� Property, P� Value- N� ExitActions. �� BeginStoryboardName/ N� EnterActions  Storyboard10 ��Name  Storyboard21 �� 
TargetName 	 ButtonStyle2 
 ImageStyle12 �� Triggers3 :� RoutedEvent  OnMouseEnter1��%�  '        '  y    7  &	 U    7  7  &		 �    7  7  &	
 R    7  �� 5   
   "  6   .�5      ��  � ��	 5      �� 5      "
  6&   .R�5      �� ���	#FF2EADF5���	#FF2EADF5$��2q�5   !   $ 10,10,10,10��5   !   $	 5pxq�5   !   ._�5       �� #��z 6/   {�.   6d   Z�  5!        5"   "   $ 2Q�63   $ 	LightGray��6B   $	 0.5Q�6T   $	 315Q�6b   5$      5%      5'      5(      �� 5*   
   "  6    5+      ��_� 5,      ToolTipContent .��5-      �� .+�5.      �� $
��Bold"�6$   
�������66   5/      50      51      .�52      ��  �@�ToolTip8	   6(   53      �� 57   
   " ��6%   .�58      ��  �@�FocusVisualStyle	 59      �� 5:      .�5;      ��  � ��	 5<      �� 5=   "   .R�5>   &   �� $��2q�60    . #��� ��6V   $��1��6�   $	 1 2R�6�   5?   #   5A      5B      5D      �� 5E       � ��#	 �  6+   �� 5F       � ��#	 �  6,   �� 5G       � ��#	 �  6+   �� 5H       �@ Feedback
	 �����6E   �� 5I       �@�Cursor$
	 Hand��6'   �� 5J       �@ ShadowDepth$	 Depth1=�6H   �� 5K       � ��$	 Medium"�6+   �� 5L       � ��$	 14(�6)   �� 5M       � ��$	 1q�60   �� 5N       � ��$	 Center=�6;   �� 5O       � ��$	 Center=�69   �� 5P       � ��$
	 16,4q�6(   �� 5Q       � ��$	 32��6'   �� 5R       � ��	 5S      �� 5T      "
 ��6&    5U      ���� 5V      Storyboard1 .��5W   "   r� $ (FrameworkElement.Margin)�6C   $
 grid��6y   .	�5X   &     $ 0:0:0.5��6>   $ 0,0,-23.906,0q�6P   5Y   #   5Z      �� 5[      Storyboard2 .��5\   "   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6@   $
 grid��6�   .\�5]   &     $ 0��6;   $ 1.097Q�6G     5^   &   $ 0:0:0.5��6;   $ 1Q�6M   5_   #   U� 5`   "   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6@   $
 grid��6�   .\�5a   &     $ 0��6;   $ 10.547Q�6G     5b   &   $ 0:0:0.5��6;   $ 0Q�6M   5c   #   5d      5e      .R�5f      � $
 grid��6   $ 0.5,0.5&�6-   z�5g      V� 5h   "   .~�5i   &   �� �� 5j   &   �� 5k   &   T� 5l   &   5m   #   .+�5o      ��   6/   �� *)'(materialDesign:ShadowAssist.CacheMode)+! �� *Self+.u�5p   "   � .+�5q   &   �� $" border��6-   #��z��6=   #��z��6i   #��z��6�   $ 2��6�    5r   *   �� 5s   .   $/# )(materialDesign:ShadowAssist.ShadowDepth)�66   ! 6g   �� *TemplatedParent+$ 5t   2   	  5u   6   5w   /   5y   '   �� 5z   &   #���  6-   $
��Left=�6e   $	% 0.4Q�6�   ��5{   *   `� 5|   .   $& Default=�6;   ' 5}   2   
  5~   6   .1�5�   2   �� $3# -(materialDesign:ButtonProgressAssist.Minimum)�6:   ! 6o   �� *TemplatedParent+�� 5�   2   $3# -(materialDesign:ButtonProgressAssist.Maximum)�6:   ! 6o   �� *TemplatedParent+�� 5�   2   $1# +(materialDesign:ButtonProgressAssist.Value)�6:   ! 6m   �� *TemplatedParent+�� 5�   2   $# ActualWidth�6:   ! 6M   �� *FindAncestor+$( 1��") ��5�   /   5�   '   5�   #   5�        5�      #��z��64   #��z��6h   |�.  #��z��6�   #��z��6�   # z 6  #��z��6H  5�      * 5�      P� 5�      + �@J�IsMouseOver, . - 5�   "   �� 5�   &   $!. Storyboard2_BeginStoryboard��65   / 5�   "   �� 5�   &   8��  66   �� 5�   &   $!0 Storyboard2_BeginStoryboard��66   8�� 6[   . �5�   "   �� $1 border��6W    �@ Darken	 . 6k   5�      P� 5�      + �@J�IsKeyboardFocused, . . �5�   "   �� $1 border��6W    �@ Darken	 . 6k   5�      P� 5�      + � {�, .  . �5�   "   ��  �@J�Opacity$
	 0.23Q�6<   5�      5�      5�      5�      �� 5�   
   " ��6%   .�5�      ��  �@�FocusVisualStyle	 5�      �� 5�      .�5�      ��  � ��	 5�      �� 5�   "   .R�5�   &   �� $��2q�60    . #��� ��6V   $��1��6�   $	 1 2R�6�   5�   #   5�      5�      5�      �� 5�       � ��#	 �  6+   �� 5�       � ��#	 �  6,   �� 5�       � ��#	 �  6+   �� 5�       �@ Feedback
	 �����6E   �� 5�       �@�Cursor$
	 Hand��6'   �� 5�       �@ ShadowDepth$	 Depth1=�6H   �� 5�       � ��$	 Medium"�6+   �� 5�       � ��$	 14(�6)   �� 5�       � ��$	 1q�60   �� 5�       � ��$	 Center=�6;   �� 5�       � ��$	 Center=�69   �� 5�       � ��$
	 16,4q�6(   �� 5�       � ��$	 32��6'   �� 5�       � ��	 5�      �� 5�      "
 ��6&    5�      ���� 5�      Storyboard1 .��5�   "   r� $ (FrameworkElement.Margin)�6C   $
 grid��6y   .	�5�   &     $ 0:0:0.5��6>   $ 0,0,-22.5,0q�6P   5�   #   5�      �� 5�      Storyboard2 .��5�   "   r� $ (FrameworkElement.Margin)�6C   $
 grid��6y   .	�5�   &     $ 0��6>   $ 0,0,-22.5,0q�6J     5�   &   $ 0:0:0.5��6>   $ 0q�6P   5�   #   5�      5�      .R�5�      � $
 grid��6   .+�5�      ��   6/   �� *)'(materialDesign:ShadowAssist.CacheMode)+! �� *Self+.u�5�   "   � .+�5�   &   �� $" border��6-   #��z��6=   #��z��6i   #��z��6�   $ 2��6�    5�   *   �� 5�   .   $/# )(materialDesign:ShadowAssist.ShadowDepth)�66   ! 6g   �� *TemplatedParent+$ 5�   2   	  5�   6   5�   /   5�   '   �� 5�   &   #���  6-   $
��Left=�6e   $	% 0.4Q�6�   ��5�   *   `� 5�   .   $& Default=�6;   ' 5�   2   
  5�   6   .1�5�   2   �� $3# -(materialDesign:ButtonProgressAssist.Minimum)�6:   ! 6o   �� *TemplatedParent+�� 5�   2   $3# -(materialDesign:ButtonProgressAssist.Maximum)�6:   ! 6o   �� *TemplatedParent+�� 5�   2   $1# +(materialDesign:ButtonProgressAssist.Value)�6:   ! 6m   �� *TemplatedParent+�� 5�   2   $# ActualWidth�6:   ! 6M   �� *FindAncestor+$( 1��") ��5�   /   5�   '   5�   #   5�        5�      #��z��64   #��z��6h   |�.  #��z��6�   #��z��6�   # z 6  #��z��6H  5�      * 5�      P� 5�      + �@J�IsMouseOver, . - 5�   "   �� 5�   &   $!. Storyboard2_BeginStoryboard��65   �� 5�   &   $!. Storyboard2_BeginStoryboard��65   �� 5�   &   $!. Storyboard2_BeginStoryboard��65   �� 5�   &   $!0 Storyboard2_BeginStoryboard��66   8��  6[   / 5�   "   �� 5�   &   8�� 66   . �5�   "   �� $1 border��6W    �@ Darken	 . 6k   5�      P� 5�      + �@J�IsKeyboardFocused, . . �5�   "   �� $1 border��6W    �@ Darken	 . 6k   5�      P� 5�      + � {�, .  . �5�   "   ��  �@J�Opacity$
	 0.23Q�6<   5�      5�      5�      5      �� 5  
   " ��6$    5     ���� 5     OnMouseEnter1 .��5     U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[2].(RotateTransform.Angle)�64    6�   Z� .\�5       $ 0:0:0.4��6/   $ 30Q�6A     5     $ 0:0:0.8��6/   $	 -30Q�6A     5     $ 0:0:1.2��6/   $ 0Q�6A   5     5	     5
     .�5     ��  � ��$	 LeftToRight=�6.   �� 5      �@J�RenderTransformOrigin$	 0.5,0.5&�66   �� 5      � z�	 5     V� 5     .~�5     �� �� 5     �� 5     T� 5     5     5     2 5     :� 5     $3 FrameworkElement.Loaded��6   :� 5     $3 Mouse.MouseEnter��6   .[�5     �� 8��  6&   5     5     5     .��5      � .+�5"  
   �� -   5        4 ��Name$4 
tabControl��5"     $
��Left=�6)   $	��526��6D   $��218,45,-10,0q�6Q   $	��Top=�6g   $	��686��6   $	% 0.8Q�6�   ��6�   Z� ��6�   Z� .@�5#     �� -   5        5 ��Name$
5 Home��5#     ��6$   Z� .��5$     � .+�5%     �� $��
-4,-5,1,-5q�6   $��img/polygon_green.jpg��60   $��UniformToFill=�6O    �	#FF8460C46g   �� 5&     $
��Left=�6    $	��148��6;   $
��Wrap=�6H   $	��Top=�6\   $	��403��6t   $��133,130,0,0q�6�   ���	#FFFFE6E6$��60(�6�   $��Arial Rounded MT Bold)�6�   �� 6�   $�ConneX                   ��6�   �� 6  6 � Language$6 fr-fr�6	  $�       ��6  �� 6+  $�Graph��6/  6?  �� 5'     ���	#FFFF8D04$
��Left=�61   $��4��6L   $��133,278,0,0q�6W   ���	#FFFF8D04$	��Top=�6   $	��417��6�   $	% 0.9Q�6�   5(     5*     �� 5+     .��5,     � 7 � ColumnDefinitions7 5-     �� 5.     $	��29* �6+   �� 5/     $	��56* �6+   8 � RowDefinitions8 51     �� 52     $	��85* �6(   �� 53     $	��64* �6(   �� 54     $
��366* �6(   .+�56     �� $��
0,-19,0,10q�6   $��img/fond4.jpg��60   $��3��6G   $��2��6X   $
��Fill=�6l   �� 57     ���	#FF2D9DDE$��2q�65   $
��Left=�6I   $	��405��6d   $��
219,49,0,0q�6q   $	��Top=�6�   $	��426��6�   $��3��6�   $��2��6�   
�������59     %  GraphSharp.Controls.GraphLayout  5;     -   5        9  Name$9 Glayout��5<     $y�Visible=�6"   �  �GraphSharp.Controls.GraphLayout`3[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[QuickGraph.IEdge`1[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], QuickGraph, Version=3.2.40122.0, Culture=neutral, PublicKeyToken=f3fb40175eec2af3],[QuickGraph.IBidirectionalGraph`2[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[QuickGraph.IEdge`1[[System.Object, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], QuickGraph, Version=3.2.40122.0, Culture=neutral, PublicKeyToken=f3fb40175eec2af3]], QuickGraph, Version=3.2.40122.0, Culture=neutral, PublicKeyToken=f3fb40175eec2af3]]:   LayoutAlgorithmType$: KK��5>     ";   OverlapRemovalAlgorithmType$	; FSA��5?     <   HighlightAlgorithmType$< Simple��5@      �	#FF2EADF5$��219,49,35,61q�6I   $��3��6_   $��2��6p   =   Graph= 5=     �� .+�5A     �� 
���   �$��1q�65   $
��Left=�6I   $��2��6d   $	��Top=�6o   $��2��6�   5B     �� 5C     ���	#FF56B0E4$��2q�65   $
��Left=�6I   $	��405��6d   $��	21,49,0,0q�6q   $	��Top=�6�   $	��193��6�   $��3��6�   
�������._�5D     �� ���	#FF2D9DDE$
��Left=�65   $��25��6P   $��
-2,-1,-2,0q�6\   ���	#FF2D9DDE$	��Top=�6�   $	��193��6�   5E     �� 5F     $
��Left=�6   $��	54,47,0,0q�67   $	��Top=�6J   $��36��6b   $	��142��6n   $��Control Panel��6z   ���	#DDF7F3F3$��16(�6�   $��Arial Rounded MT Bold)�6�   �� 5G     -   5        > ��Name$> 	nbVirText��5G     $
��Left=�61   $��26��6L   $��	43,22,0,0q�6X   $��1��6k   $��	NB Vertex��6x   $	��Top=�6�   $��87��6�   * 
 $MahApps.Metro.Controls.TextBoxHelper?   	Watermark$? NB Edge��6�   @   ClearTextButton@ . A �� SelectionOpacity$A -1Q�6  ���	#FF858585��6  Z� 6H  �� 5H     -   5        B ��Name$B nbVir��5H     $��OK��6,   $
��Left=�69   $��27��6T   $��
142,22,0,0q�6`   $��1��6t   $	��Top=�6�   $��56��6�   ���	#FF2D9DDE���	#FF2D9DDE6�   �� 5I     ���	#FF2D9DDE$
��Left=�61   $��25��6L   $��21,5,0,0q�6X   ���	#FF2D9DDE$	��Top=�6}   $	��193��6�   $��2��6�   �� 5J     $
��Left=�6   $��90,2,0,0q�67   $	��Top=�6I   $��36��6a   $��55��6m   $
��Edit��6x   ���	#DDF7F3F3$��16(�6�   $��Arial Rounded MT Bold)�6�   $��2��6�   �� 5K     -   5        $
B addV��5K     $��
Add Vertex��6+   $
��Left=�6@   $��27��6[   $��	43,43,0,0q�6g   $	��Top=�6z   $	��153��6�   $��2��6�   ���	#FF2D9DDE���	#FF2D9DDE6�   �� 5L     -   5        C ��Name$C edge2��5L     $
��Left=�6.   $��27��6I   $��
49,154,0,0q�6U   $	��Top=�6i   $	��137��6�   $��2��6�   �� 5M     -	   5        $C edge1��5M     $
��Left=�6.   $��27��6I   $��
50,122,0,0q�6U   $	��Top=�6i   $	��137��6�   $��2��6�   �� 5N     ���	#FF2D9DDE$$��2                             q�65   $
��Left=�5O     $	��145��6:   $��	28,86,0,0q�6G   $	��Top=�6Z   $	��180��6r   $��2��6~   ._�5P     �� -
   5        $	B add��5P  !   $
��Add ��6.   $
��Left=�6=   $��27��6X   $	��Top=�6d   $��82��6|   ���	#FF2D9DDE���	#FF2D9DDE$��	2,104,0,0q�6�   6�   5Q     �� 5R     -   5        $	B Rem��5R     $��Remove��6*   $
��Left=�6;   $��26��6V   $��119,193,0,0q�6b   $��2��6w   $	��Top=�6�   $��82��6�   $��14(�6�   ���	#FF2D9DDE���	#FF2D9DDE6�   �� 5S     -   5        $B Reset��5S     $��Reset��6,   $
��Left=�6<   $��29��6W   $��
43,256,0,0q�6c   $��2��6w   $	��Top=�6�   $	��153��6�   ���	#FF2D9DDE���	#FF2D9DDE6�   �� 5T     $
��Edge��6   $
��Left=�6+   $��29��6F   $��	88,93,0,0q�6R   $��2��6e   $	��Top=�6r   $��42��6�   5U     5V     �� 5W     .��5X     � .+�5Y     �� $��
-9,0,-2,10q�6   $��img/fond4.jpg��60   $
��Fill=�6G   �� 5Z     ���	#FF2D9DDE$��2q�65   $
��Left=�6I   $	��400��6d   $��	64,80,0,0q�6q   $	��Top=�6�   $	��584��6�   (  "WPFExtensions.Controls.ZoomControl  5\     ���	#FFFFFBFB$��67,82,35,38q�6>   .��5]       -   5        $9 Glayout2��5_     $y�Visible=�6#   $	; FSA��5b     $< Simple��5c      �	#FF2EADF5$��84,47,75,46q�6I   $ -1.013,-0.073&�6^   = 5`     �� 5c  ^   5d     �� 5i     -   5        $C DisplyM��5i     $
��Left=�60   $��28��6K   $��
180,15,0,0q�6W   $	��Top=�6k   $	��143��6�   6�   �� 5j     $��Layout Algorithm��6   $
��Left=�67   $��34��6R   $��	53,15,0,0q�6^   $	��Top=�6q   $	��122��6�   5k     5l     �� 5m     .��5n     � .+�5r     �� $��
-12,0,0,10q�6   $��img/fond4.jpg��60   $
��Fill=�6G   �� 5s     -   5        $$��Execute ConneX Graph Algorithm��5s     $
��Left=�6F   $��54��6a   $��239,398,0,0q�6m   $	��Top=�6�   $	��315��6�   ���	#FF2D9DDE���	#FF2D9DDE6�   �� 5t     ���	#FF2D9DDE$��2q�69   $
��Left=�6M   $	��293��6h   $��
126,82,0,0q�6u   $	��Top=�6�   $	��522��6�     5u     ���	#FFFFFBFB$��133,85,37,142q�6B   .��5v       -   5        $9 Glayout3��5x     $y�Visible=�6#   $	; FSA��5z     $< Simple��5{      �	#FF2EADF5$��84,47,75,46q�6I   $ -1.013,-0.073&�6^   = 5y     �� 5{  ^   5|     �� 5}     -   5        D ��Name$D ElipsePanel��5}  !   $
��Left=�66   $	��398��6Q   $��	17,82,0,0q�6^   $	��Top=�6q   $��81��6�   5~     5     5�     �� 5�  
   ���	#FF000008$
��Left=�6%   $	��592��6@   $��-1,-4,0,-17q�6M   
���   �$	��Top=�6q   $	��219��6�   $	% 0.9Q�6�   �� 5�  
   -   5        $	B bt2��5�     $��Display Graph��6   $
��Left=�66   $��46��6Q   $��	0,292,0,0q�6]   $	��Top=�6p   $	��218��6�   #��� 	 6�   ���	#FF28272B$	% 0.8Q�6�   ���	#FF030008$��Arial Rounded MT Bold)�6B  �� 5�  
   -   5        $	B bt1��5�     $��Create Graph��6   $
��Left=�65   $��46��6P   $��	0,245,0,0q�6\   $	��Top=�6o   $	��218��6�   #��� 	 6�   ���	#FF28272B$	% 0.8Q�6�   ���	#FF030008$��Arial Rounded MT Bold)�6A  $��16(�6d  �� 5�  
   ���	#FF000008$
��Left=�6%   $��57��6@   $��218,-4,-10,0q�6L   
���   �$	��Top=�6q   $	��686��6�   $	% 0.9Q�6�   �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $��3��6@   $��218,51,-8,0q�6K   ���	#FF2EADF5$	��Top=�6s   $	��684��6�   �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $��1��6@   $��
-1,291,0,0q�6K   ���	#FF2EADF5$	��Top=�6r   $	��219��6�   �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $��1��6@   $��
-1,337,0,0q�6K   ���	#FF2EADF5$	��Top=�6r   $	��219��6�   �� 5�  
   ���	#FF191921$
��Left=�6%   $��20��6@   $��218,551,-10,0q�6L   ���	#FF191921$	��Top=�6v   $	��686��6�   $	% 0.9Q�6�   �� 5�  
   -   5        $B homeBnt��5�     $
��Left=�6"   $��75��6=   $��
65,151,0,0q�6I   $	��Top=�6]   $��75��6u    + 'MaterialDesignFloatingActionLightButton#���  6�   ���	#FF252429���	#FF2EADF5.��5�     �� $
��Left=�6   $��48��6/   $	��Top=�6;   $��50��6S   $��img/home.png��6^   5�     �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $	��194��6@   $��
217,51,0,0q�6M   ���	#FF2EADF5$	��Top=�6t   $��3��6�   �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $��1��6@   $��
-1,245,0,0q�6K   ���	#FF2EADF5$	��Top=�6r   $	��219��6�   �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $	��168��6@   $��217,383,0,0q�6M   ���	#FF2EADF5$	��Top=�6u   $��3��6�   �� 5�  
   -   5        $	B bt3��5�     $��Execute Algorithm��6   $
��Left=�6:   $��46��6U   $��	0,338,0,0q�6a   $	��Top=�6t   $	��218��6�   #��� 	 6�   ���	#FF28272B$	% 0.8Q�6�   ���	#FF030008$��Arial Rounded MT Bold)�6F  �� 5�  
   ���	#FF2EADF5$
��Left=�6%   $��1��6@   $��
-1,382,0,0q�6K   ���	#FF2EADF5$	��Top=�6r   $	��219��6�   �� 5�  
   -   5        E ��Name$E header��5�     $
��Left=�6$   $��36��6?   $��
238,10,0,0q�6K   $
��Wrap=�6_   $
��Home��6s   $	��Top=�6   $	��228��6�   ���	#DDF7EEEE$��Arial Rounded MT Bold)�6�   $��Normal"�6�   $��20(�6�   �� 5�  
   $
��Left=�6   $��87��6+   $��	49,20,0,0q�67   $	��Top=�6J   $	��115��6b   $��img/esiLogo.png��6n   5�     5�     