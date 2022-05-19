ActiveAdmin.register Pack do

  index do
    selectable_column
    id_column
    column :image do  |pack|
      if pack.image.attached?
        #이게 이미지를 출력하는 이미지 태그의  rails 뷰 헬퍼
        image_tag url_for(pack.image), class: "small_img"
      else
        "이미지 없음"
      end
    end
    column :product_name
    column :company_name
    column :desc
    actions
  end

  # new, edit 커스텀을 하는 부분
  form do |f|
    f.inputs do
      f.input :image, as: :file
      f.input :product_name
      f.input :company_name
      f.input :desc
    end
    f.actions
  end

  #show 수정하는 부분 - 이 처리를 안하면 일단 image 파일을 올렸는데 사진이 보이는게 아니라 그냥 일반 텍스트가 보이게 되잖아
  show do
    attributes_table do
      row :id
      # 이렇게 하면 사진을 url 이미지로 받는 부분을 만든다. 하지만 일단 이렇게 하면 오류가 한가지 생기게 된다
      row :image do |pack|
        # 이미지가 없으면 오류가 나기 때문에 이미지가 없을때에 대한 처리를 함께 한다
        # image_tag url_for(pack.image)
        if pack.image.attached?
          #이게 이미지를 출력하는 이미지 태그의  rails 뷰 헬퍼
          image_tag url_for(pack.image), class: "small_img"
        else
          "이미지 없음"
        end
      end
      row :product_name
      row :company_name
      row :desc
    end
  end
end
