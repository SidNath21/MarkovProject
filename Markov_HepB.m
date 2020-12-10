T = [
   0.78 0 0 ; 0.21 0.96 0; 0.01 0.04 1
];

X = [ 
    0.60; 0.30; 0.10
];

Y = [
    0.97; 0.02; 0.01
];

Z = [
    0.01; 0.97; 0.02
];

x = linspace(1,50,50);
s = zeros(size(x));
i = zeros(size(x));
r = zeros(size(x));

clf;

for j=1:length(x)
    
    P = (T ^ j) * Z; % Y, Z
    
    S = P(1); % Susceptible
    I = P(2); % Infected
    R = P(3); % Removed
    
    s(j) = S;
    i(j) = I;
    r(j) = R;
    
end

hold on;

plot(x, s, 'g');
plot(x, i, 'b');
plot(x, r, 'r');

legend([{'Susceptible'}, {'Infected'},{'Removed'}], 'Location',"east");
title("Individual Z - Hepatitis B Health States");
xlabel("Time (years)");
ylabel("Transition probability");
