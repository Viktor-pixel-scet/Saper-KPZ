   M S B A M L   `   `   `  ����@  <Saper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:Saper.ViewModelsSaper.ViewModels  5   	   3clr-namespace:Saper.ConvertersSaper.Converters  5   	       Saper.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   *localclr-namespace:Saper.ViewModels  5   	   +local1clr-namespace:Saper.Converters  5   	     � Title$  GameView��5
   	   $
��1080��6   $
��1920��6(   ���#0e4a3c � WindowState$ 	Maximized=�5   	    � WindowStyle$
 None=�6!    � 	Resources 5      +   %Saper.Converters.CellToImageConverter   CellToImageConverter.   (Saper.Converters.InverseBooleanConverter  InverseBooleanConverter)   #Saper.Converters.BoolToVisConverter  BoolToVisConverter��%W   &	        &	      &	 &       5   
   6&     5   
   6)     5   
   6$   5       J� InputBindings 5      �� 5   
   
 �� Key$	 Esc��6    �� Command 6   �� *ChangeMenuViewCommand+.��5      ]� .+�5   
   � $��0��6   $��2��6   ���	#3F000000y�6D   �� *MenuVisibility+  	BoolToVis �� 	Converter# [ .+�5      � $	��700��6   $	��550��6   y�6,   �� *MenuSettingVisibility[0]+# [ .+�5      �� ���#4c2c24$	��700��6+   $	��550��67    J� Opacity$	 0.4Q�6D   	 �� RadiusX$	 35��6R   
 �� RadiusY$
 35��6_   �� 5      $��Center=�6   $��Center=�68   .+�5      ��   
GameButton#��[ 6   ���#4892CB$	��350��6V   $	��100��6b   $��
Назад��6o   $��0 0 0 30q�6   $��32(�6�   ��6�   �� *ChangeMenuViewCommand+�� 5      #��[ 6   ���#A42a2c$	��350��6V   $	��100��6b   $��
Вийти��6o   $��0 0 0 30q�6   $��32(�6�   ��6�   �� *QuitCommand+5      5      5      �� 5   
   $	��Top=�6    �� Orientation$ 
Horizontal=�6*   $��10q�6C   $��Center=�6O   .+�5       �� $��Score:��6   $��50(�6*   $��0,0,5,0q�68   �� 5!      $��50(�6/   
����  ���6   �� *Score+6=   �� 5"      $��
Free click��6     UnavailableButton#��[ 6*   $	��5,0q�6z   ��6U   �� *SafeClickCommand+6z   5#      � 5$   
   $	��Top=�6   $��0,0,0,0q�6$   $��Center=�65   $��Center=�6R   .+�5%      �� ��6   �� *Cells+��5&      �� 5'      .R�5(      A�  A� Rows 6&   �� *Rows+ A� Columns 6<   �� *	Columns+5)      ��5+      �� 5,      .R�5-      �� 
������ 
�������$��1q�50   	   $��0q�51   	   ��52   	   �� *DataContext.CellClickCommand+ �� RelativeSource ��  �� AncestorType
 Window��53   	   �� {�54   	   �� *	IsOpend+# [ .��56      � .+�57   "   �� $��Uniform=�6u   ��6(   �� *
CellType+# [  6u   �� 59   "   $��/Images/flag.png��6(   $��Uniform=�6B   ��5:   &   �� 5;   *    �� 
TargetType" ��60   .�5<   .   ��  �� Property � y� �� Value$ 	Collapsed=�6K    �� Triggers 5=   .   �� 5?   2    �� Binding 6>   �� *	IsFlagged+ �� Value True6\   .a�5@   6   ��  � y�$ Visible=�6S   5A   3   �� 5B   2    6>   �� *	IsOpend+ True6Z   .a�5C   6   ��  � y�$ 	Collapsed=�6S   5D   3   5F   +   5H   #   �� 5J   "   $��/Images/closed.png��6(   $��Uniform=�6D   ��5K   &   �� 5L   *   " ��60   .�5M   .   ��  � y�$ Visible=�6K    5N   .   �� 5O   2    6>   �� *	IsOpend+ True6Z   .a�5P   6   ��  � y�$ 	Collapsed=�6S   5Q   3   �� 5R   2    6>   �� *	IsFlagged+ True6\   .a�5S   6   ��  � y�$ 	Collapsed=�6S   5T   3   5V   +   5X   #   5Y      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5[      +  %Microsoft.Xaml.Behaviors.EventTrigger  5\   "      	EventName$! PreviewMouseRightButtonDown��61   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5]   &   2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 5^      �� *DataContext.ToggleFlagCommand+ �� 
 Window   CommandParameter 5_      �� 5`   #   5b      5d      5f      �� 5g      ���	#80000000y�6,   �� *
IsGameOver+# [ ._�5h      �� $��Center=�6   $��Center=�6:   
�������.+�5i      �� $��18(�6C   $
��Bold"�6Q    �� TextAlignment$ Center=�6c   $��0 0 0 10q�6z   ��6    �� *GameResultMessage+6z   �� 5j      $��Заново��6   $	��100��6.   ��6:   �� *RestartGameCommand+5k      5l      5m      5o      5q      