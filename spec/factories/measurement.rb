FactoryGirl.define do
  factory :measurement do
 		user_id 1
 		active_score "2"
 		calories_bmr "800"
 		calories_out "1500"
 		distances_total_distance "5"
 		distances_tracker_distance "2"
 		distances_logged_distance "1"
 		distances_veryactive_distance "0.5"
 		distances_moderateactive_distance "1"
 		distances_lightlyactive_distance "1"
 		fairly_active_min "20"
 		lightly_active_min "60"
 		marginal_calories "20"
 		sedentary_min "60"
 		steps_taken "5000"
 		veryActive_min "20"
 		device_battery "full"
 		device_version "flex"
  end
end