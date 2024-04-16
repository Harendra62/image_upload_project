ActiveAdmin.register Book do
    permit_params :title, :author, :description
  
    form do |f|
      f.inputs 'Book Details' do
        f.input :title
        f.input :author
        f.input :description
      end
      f.actions
    end
  end
  