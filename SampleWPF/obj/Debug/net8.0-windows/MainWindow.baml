   M S B A M L   `   `   `  ����D  @SampleWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SampleWPF	SampleWPF  5   	   Q-clr-namespace:SampleWPF.ViewModels.ConvertersSampleWPF.ViewModels.Converters  5   	   ;"clr-namespace:SampleWPF.ViewModelsSampleWPF.ViewModels  5   	   I)clr-namespace:SampleWPF.View.UserControlsSampleWPF.View.UserControls  5	   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
   	   R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L5clr-namespace:System.Diagnostics;assembly=WindowsBaseSystem.Diagnostics 5   	       SampleWPF.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SampleWPF     5   	   @local2-clr-namespace:SampleWPF.ViewModels.Converters     5   	   9
viewModels"clr-namespace:SampleWPF.ViewModels     5   	   KuserControlViewModels)clr-namespace:SampleWPF.View.UserControls     5	   	   9system&clr-namespace:System;assembly=mscorlib     5
   	   Fdiag5clr-namespace:System.Diagnostics;assembly=WindowsBase     5   	   -   5        $	��wnd��5   	     � Title$  
MainWindow��5   	   $	��350��6   $	��604��6)    � DataContext 5      (   "SampleWPF.ViewModels.MainViewModel  5   
    � 	Resources 5      9   3SampleWPF.ViewModels.Converters.DebugDummyConverter   m&    SampleWPF.ViewModels.StudentView  studentViewCtrl(   "SampleWPF.View.UserControls.Person  personControl.   (SampleWPF.View.UserControls.RegisterForm  registerFormControl  TriggerStyle �� 
TargetType �� Property �� Value �� Triggers P� Property P� Value4   .SampleWPF.ViewModels.Converters.ValueConverter  valueconverter<   6SampleWPF.ViewModels.Converters.CheckBoxCheckConverter  checkBoxCheckConverter	 �� DataType+   %SampleWPF.ViewModels.StudentViewModel*	   $SampleWPF.ViewModels.PersonViewModel3
   -SampleWPF.ViewModels.AddEditCustomerViewModel5   /SampleWPF.View.UserControls.AddEditCustomerView��%c  &	        &	      &	 &     &	 9     &	 L     &	     &	     (�� -    59      *, +)(�� d    5=      *,	 +)(�� �    5A      *,
 +)  5   
   62     5   
   6;     5   
   6?     5   
   6K   �� 5-   
   " ��6%   .�5.      ��  � ��
 ��  �6+    5/      P� 50       �@J�IsMouseOver$
 True��61   . �51      ��  � ��
 � � �6C   52      54        56   
   69     57   
   6(   �� 59   
   "	  6   .R�5:        6'   5;      �� 5=   
   "	 	 6   .R�5>        6-   5?      �� 5A   
   "	 
 6   .R�5B        6:   5C      5E      .��5F      � 
 � RowDefinitions
 5G   
   �� 5H      $��90 �6   �� 5I      $��* �6   .+�5L   
   � -   5         �Name$ NavBar��5L      $��0��6    � ColumnDefinitions 5M      �� 5N      $��* �6#   �� 5O      $��* �6#   �� 5P      $��* �6#   .+�5S      �� $��	Customers��6   $��	customers��5U      $��0��5V      ��5T      �� *
NavCommand+5V      �� 5X      $��Order��6   $��orders��5Z      $��2��5[      ��5Y      �� *
NavCommand+5[      5\      � 5^   
   -   5        $ MainContent��5^      $��1��6   .+�5_      �� ��6   �� *CurrentViewModel+5`      5     5     