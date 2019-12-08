function out = Problem4(h,vo,theta,ax,ay)
    if ay == 0
        error("Vertical acceleration must not equal zero.")
    %Shows error message if ay = 0
    end
    
    a = deg2rad(theta);
    vox = vo.*(cos(a));
    voy = vo.*(sin(a));
    d = sqrt((voy.^2)-4.*((1/2.*ay).*h));
    t1 = (-voy + d)/ay;
    t2 = (-voy - d)/ay;
    %Formula for vox,voy,d,t1,t2
    
    if t1<=0
        t1 = t2;
        x = vox.*(linspace(0,t1)) + 1/2*(ax*(linspace(0,t1)).^2);
        y = voy.*(linspace(0,t1)) + 1/2*(ay*(linspace(0,t1)).^2);
        plot(x,y,'b-')
        xlabel('Path along the X direction')
        ylabel('Path along the Y direction')
        grid on
        %Plotting the values
    else
        x = vox.*(linspace(0,t1)) + 1/2*(ax.*(linspace(0,t1)).^2);
        y = voy.*(linspace(0,t1)) + 1/2*(ay.*(linspace(0,t1)).^2);
        plot(x,y,'b-')
        xlabel('Path along the X direction')
        ylabel('Path along the Y direction')
        grid on
        %Plotting the values
        
    end
    %Formula for solving projectile motion
    
end