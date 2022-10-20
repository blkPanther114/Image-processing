
function [f, newIMG]=myConnComp(bimg)
[rs, cs]= size(bimg);
f = 0;
newIMG = bimg;
label = 1;
labelled=[];
for r = 1:rs
for c = 1:cs
p=pixel(bimg, c, r);
if p==1
r=pixel(bimg, c, r-1);
t=pixel(bimg, c-1, r);
if and( r==p, t==p)
if and(ismember(r, labelled)==1, ismember(t, labelled)==1)
newIMG(r, c) = newIMG(r-1, c);
labelled=[labelled(1:end), p];
elseif and(ismember(r, labelled)==1, ismember(t, labelled)~=1)
newIMG(r, c) = newIMG(r-1, c);
newIMG(r, c-1) = newIMG(r-1, c);
labelled=[labelled(1:end), t, p];
elseif and(ismember(r, labelled)~=1, ismember(t, labelled)==1)
newIMG(r, c) = newIMG(r, c-1);
newIMG(r-1, c) = newIMG(r, c-1);
labelled=[labelled(1:end), r, p];
else
newIMG(r, c) = label;
newIMG(r, c-1) = label;
newIMG(r-1, c) = label;
labelled=[labelled(1:end), r, p, t];
label = label+1;
end
elseif  and(r==p, t~=p)
if ismember(r, labelled)==1
newIMG(r, c) = newIMG(r-1, c);
labelled=[labelled(1:end), p];
else
newIMG(r, c) = label;
newIMG(r-1, c) = label;
labelled=[labelled(1:end), r, p];
label = label+1;
end
elseif and(t==p, r~=p)
if ismember(t, labelled)==1
newIMG(r, c) = newIMG(r, c-1);
labelled=[labelled(1:end), p];
else
newIMG(r, c) = label;
newIMG(r, c-1) = label;
labelled=[labelled(1:end), t, p];
label = label+1;
end
else
newIMG(r, c) = label;
label=label+1;
labelled=[labelled(1:end), p];
end
end
end
end

f=label-1;




