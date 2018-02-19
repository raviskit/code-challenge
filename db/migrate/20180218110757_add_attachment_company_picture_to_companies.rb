class AddAttachmentCompanyPictureToCompanies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :companies do |t|
      t.has_attached_file :company_picture
    end
  end

  def self.down
    remove_attachment :companies, :company_picture
  end
end
