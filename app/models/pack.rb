class Pack < ApplicationRecord
    # image 컬럼을 만들어 줌. 만약에 컬럼 이름이 뭐 avatar 다 그러면 뭐 has_one_attached :avatar 하면 됨
    has_one_attached :image
end
