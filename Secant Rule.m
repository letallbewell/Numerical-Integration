
n=1;
I=0;
I1=num2str(0);
count=1
frame=0
while count<21
    clf
    figure(1)

    f=figure(1);
    figure1=f;
    set(figure1,'defaulttextinterpreter','latex');

    
    x1=linspace(0,pi,1000);
    y1=x1.^2.*sin(5*x1);
    plot(x1,y1,'r','LineWidth',1.8)
    hold on 
    drawnow
    plot(x1,zeros(1,1000),'k','LineWidth',1.2)
    hold on
    drawnow
    xlabel('$x$')
    ylabel('$y$')
    
   
     n1=num2str(2*n+1);
    title(['$Integral={',I1,'}\qquad \qquad Intervals={',n1,'}$']);

    
    
    I=0;
         x=linspace(0,pi,2*n+1);
 
    for i=1:n
   
        
        j=2*(i-1)+1;
        I=I+(pi/(6*n))*(x(j)^2*sin(5*x(j))+4*(x(j+1)^2*sin(5*x(j+1)))+x(j+2)^2*sin(5*x(j+2)));
        
        
        M=[x(j)^2, x(j), 1; x(j+1)^2, x(j+1), 1; x(j+2)^2, x(j+2), 1];
        N=[x(j)^2*sin(5*x(j)); (x(j+1)^2*sin(5*x(j+1))); x(j+2)^2*sin(5*x(j+2))];
        
        O=M\N;
        
        A=O(1); B=O(2); C=O(3);
        
        
        xa=linspace(x(j),x(j+2),30);
        area(xa,A*xa.^2+B*xa+C,'FaceColor',rand(1,3))
        hold on
        scatter(x(j:j+2),A*x(j:j+2).^2+B*x(j:j+2)+C,'filled')
        
        hold on
        drawnow
        disp(I)

        saveas(gcf,['sr_frames/' num2str(frame)],'jpg')
        frame=frame+1;
    end
    
     I1=num2str(I);
    n=n+1;
    count=count+1;
    
    
end

        