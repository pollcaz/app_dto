class Customer < ActiveRecord::Base
  attr_accessible :adress, :code, :floor, :key, :mobil, :owner, :phone, :sector, :state, :value

  def self.search(search, page)
        paginate :per_page => 5, :page => page,
                 :conditions => ['adress like ?', "%#{search}%"]
  end

end
