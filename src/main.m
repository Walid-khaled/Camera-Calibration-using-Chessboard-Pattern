leftpointC = pts(:,1);
x1 = leftpointC(1);
y1 = leftpointC(2);
rightpointC = pts(:,2);
x2 = rightpointC(1);
y2 = rightpointC(2);
S = T(3); % 577.7027
syms X Y Z
eqn1 = P(1,1)*X + P(1,2)*Y + P(1,3)*Z == x1*S-P(1,4);
eqn2 = P(2,1)*X + P(2,2)*Y + P(2,3)*Z == y1*S-P(2,4);
eqn3 = P(3,1)*X + P(3,2)*Y + P(3,3)*Z == 1*S-P(3,4);
sol = solve([eqn1, eqn2, eqn3], [X, Y, Z]);
X1 = double(sol.X);
Y1 = double(sol.Y);
Z1 = double(sol.Z);

eqn1 = P(1,1)*X + P(1,2)*Y + P(1,3)*Z == x2*S-P(1,4);
eqn2 = P(2,1)*X + P(2,2)*Y + P(2,3)*Z == y2*S-P(2,4);
eqn3 = P(3,1)*X + P(3,2)*Y + P(3,3)*Z == 1*S-P(3,4);
sol = solve([eqn1, eqn2, eqn3], [X, Y, Z]);
X2 = double(sol.X);
Y2 = double(sol.Y);
Z2 = double(sol.Z);

fprintf("X1 , X2 : %0.3f mm , %0.3f mm\n",X1,X2)
fprintf("Y1 , Y2 : %0.3f mm , %0.3f mm\n",Y1,Y2)
fprintf("Z1 , Z2 : %0.3f mm , %0.3f mm\n",Z1,Z2)
fprintf("since Y axis is H and X axis is V in world frame of image 30\n")
fprintf("Cup Width : %0.3f mm\n",abs(Y2-Y1))
fprintf("Cup Height : %0.3f mm\n",abs(X2-X1))


