# frozen_string_literal: true

class DeviseCreateComents < ActiveRecord::Migration[6.1]
  def change
    create_table :coments do |t|
     
      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      t.string :title
      t.string :body


      t.timestamps null: false
    end

    add_index :coments, :email,                unique: true
    add_index :coments, :reset_password_token, unique: true
    # add_index :coments, :confirmation_token,   unique: true
    # add_index :coments, :unlock_token,         unique: true
  end
end
