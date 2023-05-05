% Fungsi ini digunakan untuk memetakan keluaran dari sebuah neuron ke dalam rentang [0,1], yang kemudian diinterpretasikan sebagai probabilitas aktivasi neuron
function y = sigmoid(x)
   y = 1.0 ./ (1.0 + exp(-x));
end