i, p, input, l = 1, 0, '',{'Cave', 'Pit', 'Hall', 'Lake'}
x, y = {"Cannot Do", "You Walk", "Opened", 'Locked', 'A Key', 'A Sword'}, {'Nothing', 'A Dragon', 'A Corpse', 'A Chest'}
a, m = {"open chest", "get sword", "look", 'inspect', 'get sword'},  {north=1, south=2, west=3, east=4}
while input ~= 'quit' do io.write('You are in a ') io.write(l[i]); io.write('\n?'); input = io.read()
    if m[input] ~= nil then i = m[input]; io.write(string.format("%s %s\n", x[2], input));
    elseif input == a[3] then print((p==2 and i == 4) and x[6] or y[i]) elseif input == a[5] and i == 4 then print(x[6]);p=3
    elseif input == 'kill dragon' then print(((p ~= 3) and 'You died.' or 'You win!'));break
    elseif input == 'inventory'then print(((p >= 1) and x[5]or''),((p >= 3) and x[6]or''))
    elseif a[1] and i == 4 then print((p < 1) and x[4] or x[3]); if p >= 1 then p = 2 end
    elseif input == a[4] and i == 3 and p < 1 then print(x[5]);p=1 else print(x[1]) end end
