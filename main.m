% bobot dan bias dari neuron pada lapisan pertama dari jaringan saraf

VARIANCE_W = 0.5;

global w11 w12 w13 w21 w22 w23 b1 b2 b3 o1 o2 o3 ob;

w11 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
w21 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
b1 = 0;

%  bobot dan bias dari neuron pada lapisan kedua
w12 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
w22 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
b2 = 0;

% bobot dan bias dari neuron keluaran
w13 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
w23 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
b3 = 0;

%  bobot dan bias neuron keluaran.
o1 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
o2 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
o3 = (VARIANCE_W - (-VARIANCE_W)).*rand() + (-VARIANCE_W);
ob = 0;

 %  merepresentasikan nilai dari kedua input pada logika XOR
INPUTS = [0, 0; 0, 1; 1, 0; 1, 1];

% merepresentasikan nilai output yang diharapkan untuk setiap pasang input tersebut.
OUTPUTS = [0; 1; 1; 0];

for i = 1:10000
   indexes = randperm(4);
   for j = indexes
      learn(INPUTS(j,1), INPUTS(j,2), OUTPUTS(j), 0.2);
   end
   if mod(i, 1000) == 0
      cost = 0;
      for j = 1:4
         o = predict(INPUTS(j,1), INPUTS(j,2));
         cost = cost + (OUTPUTS(j,1) - o) ^ 2;
      end
      cost = cost / 4;
      disp(['epoch ',num2str(i), ' mean squared error: ', num2str(cost)]);
   end
end

for i=1:4
   result = predict(INPUTS(i,1), INPUTS(i,2));
   if round(result) == OUTPUTS(i);
       disp(['for input  [', num2str( INPUTS(i,1)),', ', num2str(INPUTS(i,2)) '] expected ', num2str(OUTPUTS(i)), ' predicted ', num2str(result,4), ' which is correct']);
    else
      disp(['for input  [', num2str( INPUTS(i,1)),', ', num2str(INPUTS(i,2)) '] expected ', num2str(OUTPUTS(i)), ' predicted ', num2str(result,4), ' which is incorrect']);
    end
end

