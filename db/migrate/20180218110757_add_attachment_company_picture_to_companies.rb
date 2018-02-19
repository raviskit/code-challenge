class AddAttachmentCompanyPictureToCompanies < ActiveRecord::Migration[4.2]
  def self.up
    change_table :companies do |t|
      t.attachment :company_picture
    end
  end

  def self.down
    remove_attachment :companies, :company_picture
  end
end
