   M S B A M L   `   `   `  ����L  HTrueCarsInCompany, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:TrueCarsInCompanyTrueCarsInCompany  5   	   "    TrueCarsInCompany.MAinWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:TrueCarsInCompany     5   	     � Title$  
MAinWindow��5   	   $��371.02��6   $��749.796��6,   .��5	      � .+�5
   
   �� -   5         ��Name$ 
tabControl��5
      $��Stretch=�6*   $
��auto��6H   $��Stretch=�6V   $
��auto��6r   .@�5      �� $%��Список маршрутов��6   .��5      � 
������� � ColumnDefinitions 5      �� 5       � RowDefinitions 5      �� 5      $	��110 �6(   �� 5      $��1* �6(   �� 5      $��30 �6(   .+�5      � $��0��6    5      �� 5      $��5* �6,   �� 5      $��2* �6,   .+�5      �� $��0��6%   .+�5      �� ��6$   ��  �� ElementName$ 
MyDataGrid�� �� Path$ SelectedItem.Car.CarName��� 5      ��6$   �� $ 
MyDataGrid��$! SelectedItem.CityStart.Name��� 5      ��6$   �� $ 
MyDataGrid��$" SelectedItem.CityFinish.Name�5      �� 5      $��1��6!   $��10q�6.   $
��Left=�6;   $��Bottom=�6V   5       &   System.Windows.Controls.DataGrid  5!      -   5          Name$ 
MyDataGrid��5!   �   $��1��6   $��0,0,0,0q�6,      AutoGenerateColumns .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6�   ��6=   �� *Routes+	 �� UpdateSourceTrigger$	 PropertyChanged=�
   Columns
 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn   Header$ Откуда��61      Width$ * 6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *CityStart.Name+$	 PropertyChanged=�6�     5$      $ Куда��61   $ * 6�    6?   �� *CityFinish.Name+$	 PropertyChanged=�6�     5%      $ Машина��61   $
 0.8* 6�    6A   �� *Car.CarName+$	 PropertyChanged=�6�     5&      $' !Время отправления��61   $
 1.2* 6�    6L   �� *
TravelTime+$	 PropertyChanged=�6�     5'      $! Время прибытия��61   $
 1.2* 6�    6I   �� *TravelPrice+$	 PropertyChanged=�6�     5(      $ Время в пути��61   $ * 6�    6G   �� *TravelLength+$	 PropertyChanged=�6�     5)      $&  Грузоподъемность��61   $
 1.2* 6�    6K   �� *TravelLength+$	 PropertyChanged=�6�   5+      �� 5,      $��2��6!    �� Orientation$ 
Horizontal=�6.   .+�5-      �� $��Search��6    �� 5.      $	��150��6"   $��5q�6.   ��69   �� *
FilterText+$	 PropertyChanged=��� 5/      $��5q�6!   $��Right=�6,   $	��100��6H   �� 50      $��5q�6#   $	��100��6.   �� 51      $��5q�6#   $	��100��6.   52      53      54      �� 55      $��Маршруты��6   .��56      � ���	#FFE5E5E5 57      �� 58      $	��100 �6(   �� 59      $��1* �6(   �� 5:      $��30 �6(   .+�5<      � $��0��6    5=      �� 5>      �� 5?      .+�5A      �� .+�5B      �� $��5,5,0,5q�6%   $%��Добавить маршрут��68   $
��Left=�6S   $	��109��6n   �� 5C      $��5,5,0,5q�6%   $#��Удалить маршрут��68   $
��Left=�6S   $��25��6n   $	��109��6z   �� 5D      $��5,5,0,5q�6%   $%��Изменить маршрут��68   $
��Left=�6S   $	��109��6n   5E      �� 5F      $��dfskdkfskdf��6    $��1��66   �� 5G      $��dfskdkfskdf��6    $��1��66   �� 5H      $��dfskdkfskdf��6    $��1��66   5I        5J      $��1��6   $��0��6,   5L      5M      5N      �� 5O      $��Машины��6   .��5P      � ���	#FFE5E5E56   5Q      �� 5R      $��Города��6   .��5S      � ���	#FFE5E5E56   5T      5U      5W      5X      