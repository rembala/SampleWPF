   M S B A M L   `   `   `  ����D  @SampleWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:SampleWPF.View.UserControlsSampleWPF.View.UserControls  5      ;"clr-namespace:SampleWPF.ViewModelsSampleWPF.ViewModels  5      .    (SampleWPF.View.UserControls.RegisterForm   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:SampleWPF.View.UserControls     5      8	viewModel"clr-namespace:SampleWPF.ViewModels     5        � DataContext  5
      0   *SampleWPF.ViewModels.RegisterFormViewModel  5   
   6,   .��5      � $��Center=�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��5* �6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� -   5         ��Name$ lblUserName��5      $��
User name:��5      $��0 10 0 0q�5      5      �� 5!   
   -   5        $ lblAge��5!      $
��Age:��5"      $��1��5#      5$      �� 5&   
   -   5        $ 
lblEmailId��5&      $��Email:��5'      $��2��5(      5)      �� 5+   
   -   5         ��Name$ txtBoxUserName��5,      $��20��5.      $	��150��5/      $��0 10 0 0q�50      $��1��51      ��5-      �� *
UserName+.��51      52      �� 54   
   -   5        $ 	txtBoxAge��54      $��20��56      $	��150��57      $��1��58      $��1��59      ��55      �� *Age+.��59      5:      �� 5;   
   -   5        $ TextBoxEmail��5;      $��20��5=      $	��150��5>      $��1��5?      $��2��5@      ��5<      �� *	EmailId+5@      �� 5B   
   -   5         ��Name$ StackPanelButtons��5B       �� Orientation$ 
Horizontal=�5C      $��2��5D      $��3��5E      .+�5G      �� -   5         ��Name$ btnRegister��5G      $��20��5H      $	��100��5I      $��Register��5J      $��Center=�5K      $��	20 10 0 0q�5L      ��5M      �� *RegisterButtonClicked+5N      �� 5O      -	   5        $ btnReset��5O      $��20��5P      $	��100��5Q      $��Reset��5R      $��Center=�5S      $��	20 10 0 0q�5T      ��5U      �� *ResetButtonClicked+5V      5W      �� 5Y   
   -
   5         ��Name$ txtBlockMessage��5Y      $��Center=�5Z      $��20 8 0 0q�5[      $��4��5\      $��2��5]      ��5^      �� 5_      	 �� 
TargetType"	 ��6   .�5`      �� 
 �� Property
 � �� �� Value$ Enter details to register��6-   5a       �� Triggers 5b      �� 5c       �� Binding 6&   �� *IsButtonClicked+ �� Value True6J   .a�5d      �� 
 � �� 65   �� *
UserName+ �� StringFormat$) #User {0} is succesfully registered!��5e      5f      5h      5j      5k      5l      