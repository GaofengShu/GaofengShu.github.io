function b = decimal2binary(d, n)
%decimal2binary 将十进制字符转换成二进制数，包括小数
%   b = decimal2binary(d) d 是非负十进制数、向量、或者矩阵，返回等价的二进制字符串。
%   当 d 是整数，其结果与 dec2bin(d) 相同。
%   若不指定输出二进制数的位数，默认为 d 中最长的位数。其中小数部分位数不超过 16 位。
%
%   b = decimal2binary(d, n) 指定输出二进制数的位数
%   若 n 是标量，则该值指定小数部分的位数。
%   若 n 长度为 2，则 n(1) 指定整数部分最小位数，n(2) 指定小数部分的位数。
%   若 n 长度大于 2，则取前两位数。
%   n 中的 inf 和 NaN 将被默认值代替。
%
%   例如：
%       decimal2binary(2.875) 返回 '10.111'
%       decimal2binary(3, 4) 返回 '11.0000'
%
%   See also binary2decimal, DEC2BIN, BIN2DEC.

%% 输入参数设置
narginchk(1,2);
if ~isnumeric(d)
    error('输入数据类型错误!');
end
if 1 == nargin
    n = [0,16];
    flag = false;
else
    if ~isnumeric(n)
        error('指定位数必须是数值类型!');
    end
    n = abs(n(:));
    if 1 == numel(n)
        n = [0,n];
    elseif numel(n)>2
        n = n(1:2);
        warning('指定位数太多，将只取前两位。');
    end
    if ~isfinite(n)
        N = [0,16];
        n(isfinite(n)) = N(isfinite(n));
    end
    flag = true;
end

%% 整数部分处理
d = d(:);
dint = fix(d);
if 0 ~= n(1)
    bint = dec2bin(dint,n(1));
else
    bint = dec2bin(dint);
end
bint = num2cell(bint,2);
%% 小数部分处理
ddec = d-dint;
bdec = cell(numel(d),1);
for ii = 1 : numel(ddec)
    if flag
        ddi = ddec(ii);
        bdi = '';
        while true
            ddi = ddi*2;
            ddecint = fix(ddi);
            ddi = ddi-ddecint;
            bdi = [bdi,num2str(ddecint)]; %#ok
            if length(bdi) == n(2)+1
                bdec{ii} = binRounding(bdi, n(2));
                if length(bdec{ii})>n(2)
                    bdec{ii} = bdec{ii}(2:end);
                    bint{ii} = dec2bin(d(ii)+1);
                end
                break;
            end
        end
    else
        if 0~=ddec(ii)
            ddi = ddec(ii);
            bdi = '';
            while true
                ddi = ddi*2;
                ddecint = fix(ddi);
                ddi = ddi-ddecint;
                bdi = [bdi,num2str(ddecint)]; %#ok
                if 0 == ddi || length(bdi) == n(2)+1
                    bdec{ii} = binRounding(bdi, n(2));
                    break;
                end
            end
        else
            bdec{ii} = '';
        end
    end
end

%% 输出结果处理
bint = char(bint);
bdec = char(bdec);
if isempty(bdec)
    b = bint;
else
    [m,n] = size(bdec);
    dig = repmat('.',m,1);
    tmp = bdec(:)';
    spaces = strfind(tmp, ' ');
    tmp(spaces) = '0';
    bdec = reshape(tmp', m,n);
    b = [bint, dig, bdec];
end
end

%% 0 舍入
function br = binRounding(b,n)
if length(b)<=n
    br = b;
    return;
end
if strcmp(b(end),'0')
    br = b(1 : end-1);
else
    br = dec2bin(bin2dec(b)+1, length(b));
    br = br(1 : end-1);
end
end
%%