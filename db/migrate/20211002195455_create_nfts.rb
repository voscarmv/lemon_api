class CreateNfts < ActiveRecord::Migration[6.1]
  def change
    create_table :nfts do |t|
      t.integer :nft_id
      t.string :name
      t.text :description
      t.string :animation_url
      t.string :external_url

      t.timestamps
    end
    add_index :nfts, :nft_id, unique: true
  end
end
