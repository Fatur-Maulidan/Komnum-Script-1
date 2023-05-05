 % Fungsi ini untuk menghitung turunan dari fungsi sigmoid
% Digunakan untuk menghitung gradien dari fungsi kesalahan terhadap bobot dan bias pada jaringan saraf.
function y = sigmoid_prime(x)
   y= x * (1 - x);
end