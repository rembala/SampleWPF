   M S B A M L   `   `   `  ����D  @SampleWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:SampleWPF.View.UserControlsSampleWPF.View.UserControls  5      5    /SampleWPF.View.UserControls.AddEditCustomerView   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:SampleWPF.View.UserControls     5      .��5	      � -   5          � RowDefinitions  5
   
   �� 5      �� 5      .+�5   
   � -   5         �Name$ grid1��5      $
��Left=�5      $��	10,10,0,0q�5      $	��Top=�5      $��0��5       � DataContext 5      �� *
Customer+  5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      �� 5      .+�5"      �� $��First Name:��6   $��0��5#      $
��Left=�5$      $��3q�5%      $��0��5&      $��Center=�5'      61   �� 5)      -   5         ��Name$ firstNameTxt��5)      $��1��5*      $
��Left=�5+      $��23��5,      $��3q�5-      $��0��5.      $��Center=�50      $	��120��51      ��5/      �� *	FirstName+" �� ValidatesOnNotifyDataErrors$
 True��.��51   "    =� ErrorTemplate 53      �� 54      .R�55      �� .+�56      ��  ��Name$ textBox��68   �� 57      ��6+   �� ��58   "   �� 59   &   .R�5:   *   �� 
���  ����64   �� *ErrorContent+6R   5;   '   5=      5>      5?      .��5@   ,   5A      �� 5C      $��
Last Name:��6   $��0��5D      $
��Left=�5E      $��3q�5F      $��1��5G      $��Center=�5H      5I      �� 5K      -   5        $ lastNameTextBox��5K      $��1��5L      $
��Left=�5M      $��23��5N      $��3q�5O      $��1��5P      $��Center=�5R      $	��120��5S      ��5Q      �� *
LastName+$
 True��5S      �� 5U      $��Email:��6   $��0��5V      $
��Left=�5W      $��3q�5X      $��2��5Y      $��Center=�5Z      �� 5\      -   5        $ emailTextBox��5\      $��1��5]      $
��Left=�5^      $��23��5_      $��3q�5`      $��2��5a      $��Center=�5c      $	��120��5d      ��5b      �� *Email+$
 True��5d      �� 5f      $��Phone:��6   $��0��5g      $
��Left=�5h      $��3q�5i      $��3��5j      $��Center=�5k      �� 5m      -   5        $ phoneTextBox��5m      $��1��5n      $
��Left=�5o      $��23��5p      $��3q�5q      $��3��5r      $��Center=�5t      $	��120��5u      ��5s      �� *Phone+$
 True��.��5u   $   5v      5w      � 5y   
   $��1��6   .+�5z      �� $
��Save��6   $
��Left=�5|      $��25,5,0,0q�5}      $	��Top=�5~      $��75��5      ��5{      �� *SaveCommand+5      �� 5�      $��Cancel��6   $
��Left=�5�      $��	150,5,0,0q�5�      $	��Top=�5�      $��75��5�      ��5�      �� *CancelCommand+5�      5�      5�      5�      