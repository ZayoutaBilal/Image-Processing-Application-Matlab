[~,~,D] = size(app.inputImage);
        if D==3 
        profile_value = app.GreenProfileDropDown.Value;
             
         switch profile_value   
            case 1

            case 'Soft' %2
                
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image < 70) | (hue_image > 160);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            %app.inputImage = app.rgb_image;
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
           
             case 'Middle Soft' %3
                  
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image < 75) | (hue_image > 155);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            %app.inputImage = app.rgb_image;
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
            
             case 'Middle' %4
                 
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image < 80) | (hue_image > 150);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            %app.inputImage = app.rgb_image;
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
            
             case 'Hard' %5
                 
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image < 85) | (hue_image > 145);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            %app.inputImage = app.rgb_image;
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
            
             case 'Very Hard' %6
                 
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image < 90) | (hue_image > 140);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            %app.inputImage = app.rgb_image;
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
             %otherwise
                 
         end
          else
            msgbox('This feature only available for RGB images','Action crashed','error');
        end