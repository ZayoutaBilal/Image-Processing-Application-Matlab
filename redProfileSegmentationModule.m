[~,~,D] = size(app.inputImage);
        if D==3 
        profile_value = app.RedProfileDropDown.Value;
         switch profile_value   
            case 1

            case 'Soft' %2
                
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image > 55) & (hue_image < 320);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image); 
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);            
            
%             hsv_image = rgb2hsv(app.hsv_space); 
%             hue_image = 360.*hsv_image(:,:,1);
%             saturation_image = hsv_image(:,:,2);
%             isNotRedIndex = (hue_image > 55) & (hue_image < 320);  
%             saturation_image(isNotRedIndex) = 0;  
%             hsv_image(:,:,2) = saturation_image;  
%             app.hsv_space = hsv2rgb(hsv_image);     
%             imshow(app.hsv_space, 'Parent', app.detection);
          

             case 'Middle Soft' %3
                  
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image >  47) & (hue_image <  325);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);

             case 'Middle' %4
                 
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image >  40) & (hue_image <  330);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
            
             case 'Hard' %5
                 
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image > 30) & (hue_image < 340);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
         
            
             case 'Very Hard' %6
                 
            hsv_image = rgb2hsv(app.inputImage); 
            hue_image = 360.*hsv_image(:,:,1);
            saturation_image = hsv_image(:,:,2);
            isNotRedIndex = (hue_image > 18) & (hue_image < 345);  
            saturation_image(isNotRedIndex) = 0;  
            hsv_image(:,:,2) = saturation_image;  
            app.rgb_image = hsv2rgb(hsv_image);     
            app.imageList{end+1} = app.inputImage;
            imshow(app.rgb_image, 'Parent', app.modifiedImageAxes);
            
             %otherwise
                 
         end
        else
            msgbox('This feature only available for RGB images','Action crashed','error');
        end