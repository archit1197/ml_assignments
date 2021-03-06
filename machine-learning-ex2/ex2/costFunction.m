function [J, grad] = costFunction(theta, X, y)


% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
t=size(theta);

for i = 1:m
	J=J-y(i)*log(sigmoid(theta'*X(i,:)'))-(1-y(i))*log(1-sigmoid(theta'*X(i,:)'));

end
summ=0;
for j=1:t
	summ=0;
	for i=1:m
		summ = summ+(sigmoid(theta'*X(i,:)')-y(i))*X(i,j);
	end
	grad(j)=summ;
end

grad=grad/m;

J=J/m;







% =============================================================

end
