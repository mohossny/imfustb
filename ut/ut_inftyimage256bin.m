function infty=inftyimage256bin

inftyblk=reshape(0:255, 16, 16);
infty=[];
c=0;
for i=1:16
    inftycol=[];
    for j=1:16
        inftyblk=0:255;
        inftyblk=inftyblk(randperm(numel(inftyblk)));
        inftyblk=reshape(inftyblk, 16, 16);
        inftycol=[inftycol; inftyblk];
    end
    infty=[infty,inftycol];
end

infty=uint8(infty);