   M S B A M L   `   `   `  ����
  EcoLab%    EcoLab.View.AddNewWorkmanWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0ignorehttp://www.galasoft.ch/ignore     5   	   $	��350��5   	   $	��350��5	   	   $	��300��5
   	   $	��300��5   	     � DataContext  5   	   �� *AddNewWorkman+   Locator �� Source# [  .��5      � $��5q�6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��Center=�5      $��0��5       $��20(�5!      $��2��5"      $��Add new workman��5#      $��	0,10,0,10q�5$      �� 5&   
   $��1��6   $��Center=�5'      $��0��5(      $
��Name��5)      �� 5+   
   -   5         ��Name$ newProductName��5+      $��1��5,      $	��5,5q�5-      $��1��5.      ��5/      �� *NewWorkman.Name+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 51   
   $��2��6   $��Center=�52      $��0��53      $��Surname��54      �� 56   
   -   5        $ newProductSurname��56      $��2��57      $	��5,5q�58      $��1��59      ��5:      �� *NewWorkman.Surname+$ TwoWay=�$ PropertyChanged=��� 5>   
   $��3��6   $��Center=�5?      $��0��5@      $	��Sex��5A      �� 5C   
   -   5         ��Name$ sexes��5C      $��3��5E      $��1��5F      $	��5,5q�5G       �� DisplayMemberPath$
 Name��5H      	 �� SelectedValuePath$	 Id��5I      ��5D      �� *
Main.Sexes+# [  
 �� SelectedValue
 5J      �� *NewWorkman.SexId+$ TwoWay=�$ PropertyChanged=�5K      �� 5N   
   $��4��6   $��Center=�5O      $��0��5P      $��Position��5Q      �� 5S   
   -   5        $ position��5S      $��4��5U      $��1��5V      $	��5,5q�5W      $
 Name��5X      $	 Id��5Y      ��5T      �� *Main.Positions+# [  
 5Z      �� *NewWorkman.PositionId+$ TwoWay=�$ PropertyChanged=�5[      �� 5]   
   $��5��6   $��Center=�5^      $��0��5_      $��Marital status��5`      �� 5b   
   -   5        $ maritalStatuses��5b      $��5��5c      $��1��5d      $	��5,5q�5f      $ Abbreviation��5g      $	 Id��5h      ��5e      �� *Main.MaritalStatuses+# [  
 5i      �� *NewWorkman.MaritalStatusId+$ TwoWay=�$ PropertyChanged=�5j      �� 5m   
   $��6��6   $��Center=�5n      $��0��5o      $��Birthday��5p      � 5r   
   $��6��6   $��1��5s      $��5q�5t       5u      �� 5v      $
��Auto �6#   �� 5w      �� 5x      .+�5{      �� $��0��6   $	��0,5q�5}      $ Id��5~      $	 Id��5      ��5|      �� *	Main.Days+# [  
 5�      �� *NewWorkman.BirthDayId+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��1��6   $	��0,5q�5�      $
 Name��5�      $	 Id��5�      ��5�      �� *Main.Monthes+# [  
 5�      �� *NewWorkman.BirthMonthId+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��2��6   $	��0,5q�5�      $ Id��5�      $	 Id��5�      ��5�      �� *
Main.Years+# [  
 5�      �� *NewWorkman.BirthYearId+$ TwoWay=�$ PropertyChanged=�5�      5�      �� 5�   
   $��7��6   $��2��5�      $��Right=�5�      $��Bottom=�5�       �� Orientation$ 
Horizontal=�5�      .+�5�      �� $��40��6   $	��100��5�      $��Cancel��5�      $��5,5,0,5q�5�       �� IsCancel . 5�      �� 5�      $��40��6   $	��100��5�      $	��Add��5�      $��5,5,0,5q�5�      ��5�      �� *AddClickCommand+��5�      ��  �� ElementName$ thisPage��5�      5�      5�      5�      