class TinyPrint < ActiveRecord::Base
  
  has_attached_file :image,
    
    :styles => { :small_thumb => [ "50x50", :jpg ],
	               :medium_thumb => [ "100x100", :jpg ],
                 :large_thumb => [ "370x370", :jpg ],
	               :detail_preview => [ "450x338", :jpg ] },
	 :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml", 
         :path => "/rohini/images/:style/:id/:filename",
         :default_url => "/rohini/images/:style/:id/:filename"
    

end
