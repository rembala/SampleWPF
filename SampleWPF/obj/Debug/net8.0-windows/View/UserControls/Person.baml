   M S B A M L   `   `   `  ����D  @SampleWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:SampleWPF.View.UserControlsSampleWPF.View.UserControls  5      ;"clr-namespace:SampleWPF.ViewModelsSampleWPF.ViewModels  5      (    "SampleWPF.View.UserControls.Person   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;local)clr-namespace:SampleWPF.View.UserControls     5      8	viewModel"clr-namespace:SampleWPF.ViewModels     5        � DataContext  5
      *   $SampleWPF.ViewModels.PersonViewModel  5   
   6&   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   � $��0��6    5      �� 5      $
��auto �6    �� 5      $
��auto �6    �� 5      $
��auto �6     � ColumnDefinitions 5      �� 5      $	��100 �6#   �� 5      $��* �6#   .+�5      �� -   5         ��Name$ lblName��5      $
��Name��6%   $��0��64   $��0��6A   $	��Top=�6Q   6k   �� 5       -   5         ��Name$ txtName��5       $��0��6'   $��1��64   $	��Top=�6D   ��6\   ��  �� ElementName$ 	lstPerson�� �� Path$ SelectedItem.Name�.��6�   5!      �� 5#      -   5        $ 
lblAddress��5#      $��Address��6(   $��1��6:   $��0��6G   $	��Top=�6W   5$      �� 5&      -   5        $ 
txtAddress��5&      $��1��6*   $��1��67   $	��Top=�6G   ��6_   �� $ 	lstPerson��$ SelectedItem.Address�.��6�   5'      �� 5)      -   5         ��Name$ 	btnUpdate��5)      $	��100��5*      $��20��5+      $��Center=�5,      $��2��5-      $��Update��5.      ��5/      �� $ UpdateCommand���50      �� $ 	lstPerson��$ SelectedItem�51      52      �� 53   
   -   5         ��Name$ 	lstPerson��53      $��1��6&   ��63   �� *	Persons+	 �� View	 54      �� 55      .P�56      �� $
��Name��6%   
 �� DisplayMemberBinding
 63   �� *Name+�� 57      $��Address��6%    �� Width$	 200��66   
 6B   �� *	Address+58      5:      5;      5<      