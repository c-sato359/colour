class RelationnshipsController < ApplicationController
     belongs_to :follower, class_name: "User"

end