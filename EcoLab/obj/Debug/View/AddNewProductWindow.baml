   M S B A M L   `   `   `  ����
  EcoLab%    EcoLab.View.AddNewProductWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0ignorehttp://www.galasoft.ch/ignore     5   	   -   5          �Name$  thisPage��5   	   $��20(�5
   	   $	��450��5   	   $	��450��5   	   $	��600��5   	   $	��450��5   	    � DataContext 5	   	   �� *AddNewProduct+   Locator �� Source# [  .��5      � $��5q�6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5    
   �� $��0��6   $��Center=�5!      $��0��5"      $��20(�5#      $��2��5$      $��Add new product��5%      $��	0,10,0,10q�5&      �� 5(   
   $��1��6   $��Center=�5)      $��0��5*      $
��Name��5+      �� 5-   
   -   5         ��Name$ newProductName��5-      $��1��5.      $	��0,5q�5/      $��1��50      ��51      �� *NewProduct.Name+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 53   
   $��2��6   $��Center=�54      $��0��55      $��Category��56      �� 58   
   -   5         ��Name$ category��58      $��2��5:      $��1��5;      $	��0,5q�5<      	 �� DisplayMemberPath$
	 Name��5=      
 �� SelectedValuePath$
 Id��5>      ��59      �� *Main.Categories+# [   �� SelectedValue 5?      �� *NewProduct.CategoryId+$ TwoWay=�$ PropertyChanged=�5@      �� 5B   
   $��3��6   $��Center=�5C      $��0��5D      $
��Cena��5E      �� 5G   
   -   5        $
 cena��5G      $��3��5H      $	��0,5q�5I      $��1��5J      ��5K      �� *NewProduct.Cena+$ TwoWay=�$ PropertyChanged=��� 5M   
   $��4��6   $��Center=�5N      $��0��5O      $��Brand��5P      �� 5R   
   -   5        $ brand��5R      $��4��5T      $��1��5U      $	��0,5q�5V      $
	 Name��5W      $
 Id��5X      ��5S      �� *Main.Brands+# [   5Y      �� *NewProduct.BrandId+$ TwoWay=�$ PropertyChanged=�5Z      �� 5\   
   $��5��6   $��Center=�5]      $��0��5^      $��Quantity��5_      �� 5a   
   -   5        $ quantity��5a      $��5��5b      $	��0,5q�5c      $��1��5d      ��5e      �� *NewProduct.Quantity+$ TwoWay=�$ PropertyChanged=��� 5g   
   $��6��6   $��Center=�5h      $��0��5i      $��Quantity Unit ��5j      �� 5l   
   -   5        $ 
quantities��5l      $��6��5m      $��1��5n      $	��0,5q�5p      $	 Abbreviation��5q      $
 Id��5r      ��5o      �� *Main.Quantities+# [   5s      �� *NewProduct.QuantityId+$ TwoWay=�$ PropertyChanged=�5t      �� 5v   
   $��7��6   $��Center=�5w      $��0��5x      $��Features��5y      �� 5{   
   -   5        $ features��5{      $��7��5|      $	��0,5q�5}      $��1��5~      ��5      �� *NewProduct.Features+$ TwoWay=�$ PropertyChanged=��� 5�   
   $��8��6   $��Bottom=�5�      $��2��5�      $��Right=�5�       �� Orientation$ 
Horizontal=�5�      .+�5�      �� $��40��6   $	��100��5�      $��Cancel��5�      $��5,5,0,5q�5�       �� IsCancel . 5�      �� 5�      $��40��6   $	��100��5�      $	��Add��5�      $��5,5,0,5q�5�      ��5�      �� *AddClickCommand+��5�      ��  �� ElementName$ thisPage��5�      5�      5�      5�      