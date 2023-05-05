 % Digunakan untuk memprediksi output dari jaringan saraf berdasarkan input yang diberikan pada layer input
function output = predict(i1, i2)
   global w11 w12 w13 w21 w22 w23 b1 b2 b3 o1 o2 o3 ob;
   
   s1 = w11 * i1 + w21 * i2 + b1;
   s1 = sigmoid(s1);
   s2 = w12 * i1 + w22 * i2 + b2;
   s2 = sigmoid(s2);
   s3 = w13 * i1 + w23 * i2 + b3;
   s3 = sigmoid(s3);
   output = s1 * o1 + s2 * o2 + s3 * o3 + ob;
   output = sigmoid(output);
end