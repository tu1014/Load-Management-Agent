x = linspace(0, 1, 11); % Power Dmd (weight)
y = linspace(0, 1, 11); % UC Rate

[X, Y] = meshgrid(x, y);

% F = X .* Y;

F = X .* Y;

surf(X, Y, F);
% bar3(F);

xlabel('Power Dmd');
ylabel('UC Rate');
zlabel('Reward');