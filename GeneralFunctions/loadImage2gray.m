function out=loadImage2gray(dir)
    info=imfinfo(dir);
    
    if size(info.ColorType,2)==size('indexed',2)
        [val,map]=imread(dir);
        out=ind2gray(val,map);
    elseif size(info.ColorType,2)==size('grayscale',2)
        
        out=imread(dir);
        if size(out,3)==3
            out=rgb2gray(out);
        end
    end
