using SampleWPF.Commands;
using SampleWPF.Core;
using SampleWPF.Model;
using System.Collections.ObjectModel;

namespace SampleWPF.ViewModels
{
    public  class StudentViewModel : BindBase
    {
        public MyICommand DeleteCommand { get; set; }

        private Student _selectedStudent;

        public Student SelectedStudent
        {
            get
            {
                return _selectedStudent;
            }

            set
            {
                _selectedStudent = value;
                DeleteCommand.RaiseCanExecuteChanged();
            }
        }

        public StudentViewModel()
        {
            LoadStudents();
            DeleteCommand = new MyICommand(OnDelete, CanDelete);
        }

        // When we want to modify collection in a view and that it would automatically reflect changes then 
        // need to use ObservableCollection

        public ObservableCollection<Student> Students { get; set; }

        public void LoadStudents() {
            ObservableCollection<Student> students = new ObservableCollection<Student>();

            students.Add(new Student {  FirstName = "Mark", LastName = "Allain"});
            students.Add(new Student { FirstName = "Allen", LastName = "Brown" });
            students.Add(new Student { FirstName = "Linda", LastName = "Hamerski" });

            Students = students;
        }

        private void OnDelete()
        {
            Students.Remove(SelectedStudent);
        }

        private bool CanDelete()
        {
            return SelectedStudent != null;
        }
    }
}
