ActiveAdmin.register Product do
  permit_params :name, :description, :image

  form do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.input :description
      f.input :image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :image do |product|
      image_tag product.image.url, height: '100'
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :image do |product|
        image_tag product.image.url, height: '200'
      end
    end
  end


end
