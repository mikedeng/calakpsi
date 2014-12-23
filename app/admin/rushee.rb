ActiveAdmin.register Rushee do
  permit_params :name, :major, :gpa, :course1, :course1_grade, :course2, :course2_grade, :course3, :course3_grade, :course4, :course4_grade, :course5, :course5_grade, :course6, :course6_grade, :cut

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  index do
    column :name
    column :email
    column :hometown
    column :major
    column :gpa
    column :course_and_grades
    column :cut
    actions
  end

  form do |f|
    f.inputs "Rushee information" do
      f.input :name
      f.input :email
      f.input :hometown
      f.input :major
      f.input :gpa
      f.input :cut
    end
    f.actions
  end

end
