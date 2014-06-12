# Statistical Inference Week 1

## Probability
Basics set:
$$P(A∪B)=P(A)+P(B)−P(A∩B)$$

PMF = Probability Mass Function (for discrete random variable)

PDF = Probability Density Function (for continue random variable) - d

CDF = Cumulative Density Function: $F(x) = P(X\le x)$ - p

The $α^{th}$ quantile of a distribution with distribution function F is the point $x_α$ so that

$$F(x_α)=α$$

## Expected Values

$$E(aX+b) = aE(X) + b$$

$$E(X+Y) = E(X) + E(Y)$$

*The expected value of the sample mean is the population mean - unbiased estimator.*

$$Var(X) = E[X^2] - E[X]^2$$

$$E[X^2] = \sum x^2\times p(x)$$

## Independence
$$p(A\cap B) = p(A) \times p(B)$$

iid: indépendant and identical distributed

## Correlation
Covariance of two random variable X and Y is defined as:
$$Cov(X,Y) = E[(X-\mu_x)(Y-\mu_y)] = E[XY] - E[X]E[Y]$$

Correlation is therefore defined as:
$$Cor(X,Y) = Cov(X,Y)/\sqrt{Var(X)Var(Y)}$$

For uncorrelated random variables, sum of variance is the variance of the sum:
$$Var(\sum_{i=1}^{n}{X_i}) = \sum_{i=1}^{n}{Var(X_i)}$$

We have:
$$Var(aX+b) = a^2\times Var(X)$$

Variance of sample mean:
$$Var(\bar{X})=\frac{\sigma^2}{n}$$

Sample Variance:
$$S^2 = \frac{\sum_{i=1}^{n}{(X_i - \bar{X})^2}}{n-1} = \frac{\sum_{i=1}^{n}{X_{i}^{2}-n\bar{X}^2}}{n-1}$$

Memo:

- Suppose $X_i$ are iid with mean $\mu$ and variance $\sigma^2$
- $S^2$ estimates $\sigma^2$
- The calculation of $S^2$ involves dividing by n-1
- $S/\sqrt{n}$ estimates the standard error of the mean ($\sigma/\sqrt{n}$) and called the sample standard error (of mean)

## Summary
1. $E[aX]=aE[X]$, if a is a constant 
2. $E[X−a]=E[X]−a$, if a is a constant 
3. $Var(aX)=a^2\times Var(X)$, if a is a constant 
4. $Var(X−a)=Var(X)$, if a is a constant 