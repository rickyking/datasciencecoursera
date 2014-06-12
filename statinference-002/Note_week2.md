# Statistical Inference Week 2

## Conditional Probability
The event B should be an event that happens:
$$P(B) > 0$$
The conditional probability of A on B is:
$$P(A|B)=\frac{P(A\cap B)}{P(B)}$$
If A and B are independant:
$$P(A|B)=\frac{P(A\cap B)}{P(B)} = P(A)$$
N.B.
- $P(A ∪ B) = P(A) + P(B) − P(A ∩ B)$
- if $A ⊂ B$ then $P(A) ≤ P(B)$
- $P(A ∪ B) = 1 − P(A^c ∩ B^c)$
- $P(A ∩ B^c ) = P(A) − P(A ∩ B)$

## Bayes' rule
$$P(B|A)=\frac{P(B\cap A)}{P(A)}=\frac{P(A|B)\times P(B)}{P(A\cap B)+P(A\cap B^c)}=\frac{P(A|B)\times P(B)}{P(A|B)\times P(B)+P(A|B^c)\times P(B^c)}$$

## Diagnostic Tests

* Let + and  - be the events that the result of a diagnostic test is positive or negative respectively
* Let D and $D^c$ be the event that the subject of the test has or does not have the disease respectively
* The sensitivity is the probability that the test is positive given that the subject actually has the disease $P(+|D)$,
* The specificity is the probability that the test is negative given that the subject does not have the disease $P(-|D^c)$,
* The positive predictive value is the probability that the subject has the disease given that the test is positive $P(D|+)$,
* The negative predictive value is the probability that the subject does not have the disease given that the test is negative $P(D^c|-)$

|  | Condition Positive | Condition Negative |
| ------------ | ------------- | ------------ |
| Test Positive | True Positive | False Positive |
| Test Negative | False Negative  | True Negative |

* The prevalence of the disease is the marginal probability of disease P(D)
* The diagnostic likelihood ratio of a positive test, labeled $DLR_+$, is $\frac{P(+|D)}{P(+|D^c)}$ and is $$sensitivity/(1-specificity)$$
* The diagnostic likelihood ratio of a negative test, labeled $DLR_-$, is $\frac{P(-|D)}{P(-|D^c)}$ and is $$(1-sensitivity)/specificity$$

## Some Common Distribution

### Bernoulli distribution
* The Bernoulli distribution arises as the result of a binary outcome,
* Bernoulli random variables take (only) the values 1 and 0 with probabilities of (say) p and 1-p respectively,
* PMF(Probability Mass Function) for a Bernoulli random variable X is $$P(X=x)=P^x(1-p)^{1-x}$$
* Mean = $p$, Variance = $p(1-p)$

### Binomial trials
* The binomial random variables are obtained as the sum of iid Bernoulli trials
* Let $X_1$, ..., $X_n$ be iid Bernoulli(p); then $X=\sum^{n}_{i=1}{X_i}$ is a binomial random variable
* The binomial mass function is $$P(X=x)=C^{x}_{n}p^x(1-p)^{n-x}, x=0,...,n$$

### Normal distribution
- A random variable X is following a normal or gaussian distribution with mean $\mu$ and variance $\sigma^2$, if the associated density is $$\frac{(2\pi \sigma^2)^{-\frac{1}{2}}}{e^{\frac{(x-\mu)^2}{2\sigma^2}}}$$
- $E[X] = \mu$ and $Var(X)=\sigma^2$

**Some facts:**

1. Approximately 68%, 95% and 99% of the normal density lies within 1, 2 and 3 standard deviations from the mean, respectively
2. -1.28, -1.645, -1.96 and -2.33 are the 10th, 5th, 2.5th and 1st percentiles of the standard normal distribution respectively
3. By symmetry, 1.28, 1.645, 1.96 and 2.33 are the 90th, 95th, 97.5th and 99th percentiles of the standard normal distribtion respectively

**Properties:**

- The normal distribution is symmetric and peaked about its mean (therefore the mean, median and mode are all equal)
- A constant times a normally distributed random variable is also normally distributed (what is the mean and variance?)
- Sums of normally distributed random variables are again normally distributed even if the variables are dependent (what is the mean and variance?)
- Sample means of normally distributed random variables are again normally distributed (with what mean and variance?)
- The square of a standard normal random variable follows what is called chi-squared distribution
- The exponent of a normally distributed random variables follows what is called the log-normal
distribution
- As we will see later, many random variables, properly normalized, limit to a normal distribution

**Likelihoods of Normal distribution**

- MLE for $\mu$ is $\bar{X}$
- MLE for $\sigma^{2}$ is $$\frac{\sum^{n}_{i=1}(X_i-\bar{X})^2}{n}$$ (which is the biased version of the sample variance).


### The poisson distribution
- used to model counts
- The poisson mass function is $$P(X=x;\lambda) = \frac{\lambda^{x}e^{-\lambda}}{x!}$$ for x=0,1,...
- The mean of this distribution is $\lambda$
- The variance is $\lambda$
- Notice that x range from 0 to $\infty$

**Poisson derivation**

- $\lambda$ is the mean number of events per unit time (每单位时间，事件发生的数量)
- let h be very small, suppose we assume that
    + probability of an event in an interval of length h is $\lambda h$ while the probability of more than one event is negligible
    + whether or not an event occurs in one small interval does not impact whether or not an event occurs in another small interval then, the number of events per unit time is Poisson with mean $\lambda$.


