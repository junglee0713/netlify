data {
  int<lower=0> N;
  vector[N] x1;
  vector[N] x2;
  int<lower=0, upper=1> y[N];
}
parameters {
  real alpha;
  real beta1;
  real beta2;
}
model {
  y ~ bernoulli_logit(alpha + beta1 * x1 + beta2 * x2);
}
