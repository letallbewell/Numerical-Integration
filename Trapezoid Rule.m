x1=linspace(0,pi,1000);
y1=x1.^2.*sin(5*x1);
figure(1)
f=figure(1);
figure1=f;
set(figure1,'defaulttextinterpreter','latex');
plot(x1,y1,'r','LineWidth',1.8)
hold on
plot(x1,zeros(1,1000),'k','LineWidth',1.2)
xlabel('$x$')
ylabel('$y$')
hold on
n=2;
I=0;
I1=num2str(0);
count=1
frame=0
while count<21
    clf
    figure(1)
    plot(x1,y1,'r','LineWidth',1.8)
    hold on 
    drawnow
    plot(x1,zeros(1,1000),'k','LineWidth',1.2)
    hold on
    drawnow
    xlabel('$x$')
    ylabel('$y$')
    
   
     n1=num2str(n);
    title(['$Integral={',I1,'}\qquad \qquad Intervals={',n1,'}$']);

    
    
    I=0;
    x=linspace(0,pi,1+n);
    disp(n)
    for i=1:n
        I=I+(pi/(n))*(x(i)^2*sin(5*x(i))+0.5*(x(i+1)^2*sin(5*x(i+1))-x(i)^2*sin(5*x(i+1))));
        area([x(i) x(i+1)],[x(i) x(i+1)].^2.*sin(5*[x(i) x(i+1)]),'FaceColor',rand(1,3))
        hold on
        drawnow
        saveas(gcf,['tr_frames/' num2str(frame)],'jpg')
        frame=frame+1;
        disp(I)
    end
    
     I1=num2str(I);
    n=n+1;
    pause(0.1)
    
    count=count+1;
    
end

        