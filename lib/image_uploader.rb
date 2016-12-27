class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::RMagick
    
    process resize_to_fit: [720, 720]
    
    version :small do
        process resize_to_fill: [480, 480]
    end
    
end