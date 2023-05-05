function learn(i1, i2, target, alpha)
   
   global w11 w12 w13 w21 w22 w23 b1 b2 b3;
   global o1 o2 o3 ob;
   
   s1 = w11 * i1 + w21 * i2 + b1;
   s1 = sigmoid(s1);
   s2 = w12 * i1 + w22 * i2 + b2;
   s2 = sigmoid(s2);
   s3 = w13 * i1 + w23 * i2 + b3;
   s3 = sigmoid(s3);

   output = s1 * o1 + s2 * o2 + s3 * o3 + ob;
   output = sigmoid(output);

   error = target - output;
   derror = error * sigmoid_prime(output);

   ds1 = derror * o1 * sigmoid_prime(s1);
   ds2 = derror * o2 * sigmoid_prime(s2);
   ds3 = derror * o3 * sigmoid_prime(s3);

   o1 = o1 + (alpha * s1 * derror);
   o2 = o2 + (alpha * s2 * derror);
   o3 = o3 + (alpha * s3 * derror);
   ob = ob + (alpha * derror);

   w11 = w11 + (alpha * i1 * ds1);
   w21 = w21 + (alpha * i2 * ds1);
   b1 = b1 + (alpha * ds1);
   w12 = w12 + (alpha * i1 * ds2);
   w22 = w22 + (alpha * i2 * ds2);
   b2 = b2 + (alpha * ds2);
   w13 = w13 + (alpha * i1 * ds3);
   w23 = w23 + (alpha * i2 * ds3);
   b3 = b3 + (alpha * ds3);
end
