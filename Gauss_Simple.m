%GAUSS SIMPLE
fprintf('Ingrese la matris ampliada como se muestra en el siguiente ejemlo: [0 0 0 0;0 0 0 0;0 0 0 0]\n\n');
fprintf('Nota:recordar usar corchetes.\n');
M = input('');
[a,b]=size(M);
for j=1:a-1   %Estructura For para realizar las operaciones
    for z=2:a
        if M(j,j)==0
            t=M(j,:);M(j,:)=M(z,:); 
            M(z,:)=t;
        end
    end
    for i=j+1:a
        M(i,:)=M(i,:)-M(j,:)*(M(i,j)/M(j,j));
    end
end
x=zeros(1,a); %funcion definida de la libreria del editor para operaciones de matrizes 
for s=a:-1:1
    c=0;
    for k=2:a
        c=c+M(s,k)*x(k);
    end
    x(s)=(M(s,b)-c)/M(s,s);
end
fprintf('--------------------------------------------\n');
fprintf('      Metodo de eliminacion gaussiana\n');
fprintf('--------------------------------------------\n');
%vAriAbles del resultAdo
fprintf('           Matriz\n');
M
fprintf('--------------------------------------------\n');
Resultados=x;

Resultados