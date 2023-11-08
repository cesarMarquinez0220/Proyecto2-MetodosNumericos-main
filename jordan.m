% Gauss-JordAn 
%Definir matriz
fprintf('LLenado de matriz por fila entre corchetes y separadas por punto y coma [1 2 3; 1 2 3; 1 2 3]\n\n');
M = input("Ingresa la matriz: ");
M
%Llenado de la matriz por fila
%haciendo la diagonal principal 1 y la ezquina inferior ceros
[a,n]=size(M);
for j=1:a-1
    for z=2:a
        if M(j,j)==0
            t=M(1,:);M(1,:)=M(z,:);
            M(z,:)=t;
        end
    end
    for i=j+1:a
        M(i,:)=M(i,:)-M(j,:)*(M(i,j)/M(j,j));
    end
end
%Haciendo ceros la ezquina superior
for j=a:-1:2
    for i=j-1:-1:1
        M(i,:)=M(i,:)-M(j,:)*(M(i,j)/M(j,j));
    end
end

for s=1:a
    M(s,:)=M(s,:)/M(s,s);
    x(s)=M(s,n);
end
%Impresion de los reultados de la matriz
fprintf('RESULTADOS\n');
M
Respuestas=x;
Respuestas