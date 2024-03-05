            if (app.TabGroup.SelectedTab == app.RGBValuesTab)
                    app.REDSlider.Value = 0;
                 app.GREENSlider.Value = 0;
                 app.BLUESlider.Value = 0;
             elseif (app.TabGroup.SelectedTab == app.BrightnessTab)
                 app.jasSlider.Value = 0;  
             elseif (app.TabGroup.SelectedTab == app.ColorBitDepthTab)
                 app.bitDepthSlider.Value = 8;
             elseif (app.TabGroup.SelectedTab == app.RotateTab)
                 app.rotateSlider.Value = 0;   
             elseif (app.TabGroup.SelectedTab == app.ContrastTab)        
              app.contrastSlider.Value = 1;   
             elseif (app.TabGroup.SelectedTab == app.ColorSegmentationTab)        
              app.SliderManualDetection.Value = 0;  
              app.EditField_H.Value = 0;
              app.EditField_D.Value = 0;
              
            end
             
            imshow(app.inputImage, 'Parent', app.modifiedImageAxes); 