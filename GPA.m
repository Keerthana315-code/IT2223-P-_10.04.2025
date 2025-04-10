num_groups = input('Enter the number of groups (e.g., students, semesters): '); 

for group = 1:num_groups
    fprintf('\nCalculating GPA for Group %d:\n', group);
    total_gpa = 0;
    num_subjects = input('Enter the number of subjects for this group: ');
    
    for i = 1:num_subjects
        marks = input('Enter the marks: ');
        
       
        if marks >= 90
            grade = 'A+';
            gpa = 4.00;
        elseif marks >= 80
            grade = 'A';
            gpa = 4.00;
        elseif marks >= 70
            grade = 'B';
            gpa = 3.70;
        elseif marks >= 60
            grade = 'C';
            gpa = 3.00;
        elseif marks >= 50
            grade = 'D';
            gpa = 2.70;
        else
            grade = 'F';
            gpa = 0.00;
        end
        
        
        disp(['Subject ', num2str(i), ' - Grade: ', grade, ', GPA: ', num2str(gpa)]);
        
       
        total_gpa = total_gpa + gpa;
    end
    
    
    final_gpa = total_gpa / num_subjects;
    fprintf('Overall GPA for Group %d: %.2f\n', group, final_gpa);
end
