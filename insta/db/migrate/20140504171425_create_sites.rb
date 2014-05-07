class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :site_name
      t.string :user
      t.string :site_title
      t.string :admin_user
      t.string :admin_email
      t.string :admin_password
      t.string :wp_home
      t.string :wp_siteurl
      t.string :db_password
      t.string :db_user
      t.references :user, index: true   
        
      t.timestamps
    end
  end
end
