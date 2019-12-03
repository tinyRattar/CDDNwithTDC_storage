dir = 'pngFormat/';
max_intensity = 2000;

for i = 13:13
    matname = ['sol_yxzt_pat',num2str(i),'.mat'];
    patient = load(matname);
    for z = 1:5
        for t = 1:20
            im = patient.sol_yxzt(:,:,z,t)/max_intensity;
            filename = [dir,'mr_heart_p',num2str(i,'%02d'),'t',num2str(t,'%02d'),'z',num2str(z-1),'.png']
            imwrite(im,filename);
        end;
    end;
end;