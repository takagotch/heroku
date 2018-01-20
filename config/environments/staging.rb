#if !Rails.env.development? && !Rails.env.test?
#end

if Rails.env.staging?
  S3_BUCKET = "my_staging_bucket_name"
  S3_BUCKET = ENV['MY_BUCKET_NAME']
end


