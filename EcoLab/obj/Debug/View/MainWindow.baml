   M S B A M L   `   `   `  ����A  =EcoLab, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:EcoLabEcoLab  5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5   	   f bGalaSoft.MvvmLight.Platform, Version=5.3.0.19032, Culture=neutral, PublicKeyToken=5f873c45e98af8a1lMclr-namespace:GalaSoft.MvvmLight.Command;assembly=GalaSoft.MvvmLight.PlatformGalaSoft.MvvmLight.Command 5	   	       EcoLab.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:EcoLab     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   ]cmdMclr-namespace:GalaSoft.MvvmLight.Command;assembly=GalaSoft.MvvmLight.Platform     5	   	   -   5          �Name$  thisPage��5   	    � Title$ EcoLab��5   	   $	��780��6   $	��920��6%    � DataContext 5   	   �� *Main+   Locator �� Source# [  ��5      �� 5   
   ��5      �� 5   
    �� ImageSource$; 5/Content/Icons/blue-mac-gaussian-blur-wallpaper-3.jpg��6   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��40 �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   o� $��0��6   $��0��6   $��2��6,   .@�5      m� $
��Plik��6   .@�5      m� $��	Ustawenie��6   m� 5       $��Drukuj��6   �� 5!      m� 5"      $��Zakonicz��6    m� Command 6-   �� *closeCommand+5#      m� 5$      $��Handel��6   .@�5%      m� $��Faktura��6   m� 5&      $��	Zamowenie��6   5'      m� 5(      $��Magazin��6   m� 5)      $��O programmie��6   5*      b� 5.   
   $��0��6   $��1��6/   $��2��6<   .+�5/      �� $��32��6   $��32��50      ��51      �� * Main.AddNewProductClickCommand+# [  ��52      ��  �� ElementName$ thisPage��.��53      �� $��/Content/Icons/add1.png��6   54      �� 56      �� 58      $��32��6   $��32��6    $��5,0,0,0q�6,   $	��Oil��5:      ��59      �� *CategoryButtonClickCommand+.��5;      �� $4��./Content/Icons/can-stock-photo_csp20236007.jpg��6   5=      �� 5>      $��32��6   $��32��6    $��Protein��5@      ��5?      �� *CategoryButtonClickCommand+.��5A      �� $.��(/Content/Icons/Smoothie_Protein-icon.png��6   5B      �� 5C      �� 5E      $��32��6   $��32��6    $��Sauce��5G      ��5F      �� *CategoryButtonClickCommand+.��5H      �� $P��J/Content/Icons/soya01-05.jpgcdcbb9d2-cace-46d7-8d6d-be6feb0f32c5Larger.jpg��6   5I      �� 5J      $��32��6   $��32��6    $��Water��5L      ��5K      �� *CategoryButtonClickCommand+.��5M      �� $G��A/Content/Icons/38738418-Water-bottle-vector-icon-Stock-Vector.jpg��6   	 J� RenderTransformOrigin$	 	0.5,0.519&�6c   5N      �� 5O      $��32��6   $��32��6    $	��Bar��5Q      ��5P      �� *CategoryButtonClickCommand+.��5R      �� $4��./Content/Icons/Maxler-L-carnitine-bar-35-g.jpg��6   $	 	0.5,0.519&�6P   5S      �� 5T      $��32��6   $��32��6    $��	Chocolate��5V      ��5U      �� *CategoryButtonClickCommand+.��5W      �� $��/Content/Icons/images.png��6   $	 	0.5,0.519&�6;   5X      �� 5Y      $��32��6   $��32��6    $��Cream��5[      ��5Z      �� *CategoryButtonClickCommand+.��5\      �� $��/Content/Icons/images.jpg��6   $	 	0.5,0.519&�6;   5]      �� 5^      $��32��6   $��32��6    $��Fruits��5`      ��5_      �� *CategoryButtonClickCommand+.��5a      �� $$��/Content/Icons/fruits-icon.png��6   $	 	0.5,0.519&�6@   5b      �� 5c      $��32��6   $��32��6    $	��Tea��5e      ��5d      �� *CategoryButtonClickCommand+.��5f      �� $<��6/Content/Icons/tea_love_icon_by_cappippuni-d84xx8h.jpg��6   $	 	0.5,0.519&�6X   5g      �� 5h      $��32��6   $��32��6    $��Sugar��5j      ��5i      �� *CategoryButtonClickCommand+.��5k      �� $6��0/Content/Icons/скачанные файлы.jpg��6   $	 	0.5,0.519&�6D   5l      �� 5m      #��["�6   $	��5,0q�5n      �� 5o      $��32��6   $��32��5p      ��5q      �� *WorkmansButtonClickCommand+.��5r      �� $:��4/Content/Icons/скачанные файлы (1).jpg��6   5s      �� 5u      $��32��6   $��32��5v      $��2,0,0,0q�5w      ��5x      �� *AddNewWorkmanClickCommand+.��5y      �� $$��/Content/Icons/new-workman.jpg��6   5z      5{      �� 5�   
   -   5        
 ��Name$
 dbTabControl��5�      $��1��5�      $��2��5�       �� SelectedIndex 5�      �� *SelectedCategory+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=���5�      �� 5�      $; 5/Content/Icons/blue-mac-gaussian-blur-wallpaper-3.jpg��6   .@�5�      �� $��Products��6   .��5�      �  5�      �� 5�      �� 5�      .+�5�      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5�      $��Stretch=�5�      $��5,10,0,0q�5�         AutoGenerateColumns .  {�5�      �� *Products.Count+��5�      �� *
Products+.  (System.Windows.Interactivity.Interaction   Triggers 5�      /  )System.Windows.Interactivity.EventTrigger  5�         	EventName$ CellEditEnding��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 5�   "   6  0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *SaveProductChanges+   CommandParameter 6_   �� $ dataGrid�� �� Path$ SelectedItem�5�         Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 61      Header$ Id��6>      
IsReadOnly . 1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6J   �� *Id+6a   4
  .System.Windows.Controls.DataGridComboBoxColumn
  5�      -   5        cbCategories��$ 50 5�   -   $ Category��5�   -    
  DisplayMemberPath$
 Name��5�   -    
  SelectedValuePath$ Id��5�   -    
  ItemsSource 5�   -   �� *Main.Categories+# [   
  SelectedValueBinding 5�   -   �� $ 
CategoryId�$ TwoWay=�$ PropertyChanged=�  5�      $
 Auto 61   $
 Date��6>    .  6L   �� *Date+6e     5�      $
 Auto 61   $
 Cena��6>    6L   �� *Cena+$ TwoWay=�$ PropertyChanged=�
  5�      -   5        cbBrands��$ 50 5�   -   $ Brand��5�   -   $
 Name��5�   -   $ Id��5�   -    5�   -   �� *Main.Brands+# [   5�   -   �� $ BrandId�$ TwoWay=�$ PropertyChanged=�  5�      $
 Auto 61   $ Quantity��6>    6P   �� *
Quantity+$ TwoWay=�$ PropertyChanged=�
  5�      -   5        cbQuantities��$ 50 5�   -   $
 Unit��5�   -   $ Abbreviation��5�   -   $ Id��5�   -    5�   -   �� *Main.Quantities+# [   5�   -   �� $ 
QuantityId�$ TwoWay=�$ PropertyChanged=�  5�      $
 Auto 61   $ Features��6>    6P   �� *
Features+$ TwoWay=�$ PropertyChanged=�4  .System.Windows.Controls.DataGridTemplateColumn  5�      $ 20 65      CellTemplate 5�   "   �� 5�   &   .R�5�   *   �� ��61   �� $ thisPage��$* $DataContext.DeleteProductButtonClick���5�   1   �� $ dataGrid��$ SelectedItem�.��5�   .   �� $��/Content/Icons/delete.png��64   5�   +   5�   '   5�      5�      5�      5�      �� 5�      $��State��6   .��5�        -   5        $ workmanGrid��5�      $��Stretch=�5�      $��5,10,0,0q�5�       .  {�5�      �� *Workmans.Count+��5�      �� *
Workmans+ 5�        5�      $ CellEditEnding��6)   . 5�         64   �� *SaveWorkmanChanges+ 6[   �� $ workmanGrid��$ SelectedItem�5�       5�        5�      $
 Auto 6-   $ Id��6:    .  6F   �� *Id+6]     5�      $
 Auto 6-   $
 Name��6:    6H   �� *Name+$ TwoWay=�$ PropertyChanged=�  5�      $
 Auto 6-   $ Surname��6:    6K   �� *	Surname+$ TwoWay=�$ PropertyChanged=�
  5�      -   5        
cbDays��$ 	Birth Day��5�   1   $ Id��5�   1   $ Id��5�   1    5�   1   �� *	Main.Days+# [   5�   1   �� $ 
BirthDayId�$ TwoWay=�$ PropertyChanged=�
  5�      -	   5        	cbMonthes��$ Birth Month��5�   1   $
 Name��5�   1   $ Id��5�   1    5�   1   �� *Main.Monthes+# [   5�   1   �� $ BirthMonthId�$ TwoWay=�$ PropertyChanged=�
  5�      -
   5        cbYears��$ 
Birth Year��5�   -   $ Id��5�   -   $ Id��5�   -    5�   -   �� *
Main.Years+# [   5�   -   �� $ BirthYearId�$ TwoWay=�$ PropertyChanged=�
  5�      -   5        cbPositions��$ Position��5�   -   $
 Name��5�   -   $ Id��5�   -    5�   -   �� *Main.Positions+# [   5�   -   �� $ 
PositionId�$ TwoWay=�$ PropertyChanged=�
  5      -   5        cbSexes��$	 Sex��5  -   $
 Name��5  -   $ Id��5  -    5  -   �� *
Main.Sexes+# [   5  -   �� $ SexId�$ TwoWay=�$ PropertyChanged=�
  5     -   5        cbMaritalStatuses��$ 50 5  -   $ Marital Status��5	  -   $
 Name��5  -   $ Id��5  -    5
  1   �� *Main.MaritalStatuses+# [   5  -   �� $ MaritalStatusId�$ TwoWay=�$ PropertyChanged=�  5     $ 20 61    5     �� 5  "   .R�5  &   �� ��6-   �� $ thisPage��$* $DataContext.DeleteWorkmanButtonClick���5  -   �� $ workmanGrid��$ SelectedItem�.��5  *   �� $��/Content/Icons/delete.png��60   5  '   5  #   5     5     5     5     �� 5  
   $��3��6   $��0��6!   $��2��61   .@�5     �� $��	300,0,0,0q�6   .��5     �� 	WSB-NLU5!     5"     �� 5#     $��Right=�6   .��5$     �� Petrukhin Bogdan5&     5'     5(     5)     5*     