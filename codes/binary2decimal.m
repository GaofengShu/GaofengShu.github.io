function dec = binary2decimal(b)
%binary2decimal 将二进制字符转换成十进制数，包括小数
%   dec = binary2decimal(b) b 是能表示二进制数的字符串，返回等价的十进制数。
%   当 b 是整数，其结果与 bin2dec(b) 相同。
%   
%   b 可以是字符串数组（每一行视为一个二进制数）、元胞阵列。b 中空白将会被移出。
%
%   例如：
%       binary2decimal('0.1') 返回 0.5
%       binary2decimal('010 111') 返回 23
%   
%   See also decimal2binary, DEC2BIN, BIN2DEC.
%%
bch = char(b);
[m,n] = size(bch);

%% 修剪输入字符串
digPos = zeros(m,1);
for ii = 1 : m
    [hasDig, digPos(ii)] = ismember('.', bch(ii,:));
    spaces = (bch(ii,:)==' ');
    if hasDig && any(spaces)
        bch(ii, spaces) = '0';
    elseif ~hasDig && any(spaces)
        btmp = bch(ii,:);
        nrOfZeros = sum(spaces);
        btmp(spaces) = '';
        bch(ii, :) = [repmat('0',1,nrOfZeros),btmp];
    end
end

%% 检查非法字符
if any(any(~(bch(:) == '0' | bch(:) == '1' | bch(:) == '.')))
    error('二进制字符只能包含 0, 1, 和小数点。')
end
%% 转换成十进制
dec = zeros(m,1);
for jj = 1 : m
    v = bch(jj,:)-'0';
    if 0 == digPos(jj)
        twos = pow2(n-1 : -1 : 0);
    else
        v(digPos(jj)) = [];
        twos = pow2(digPos(jj)-2 : -1 : digPos(jj)-n);
    end
    dec(jj) = sum(v.*twos,'all');
end

