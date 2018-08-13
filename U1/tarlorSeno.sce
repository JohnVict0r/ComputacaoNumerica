function T = TaylorSeno(x0, x, n)
    T = 0
    for i = 0 : n-1
        mod= modulo(i,4)
        if mod==0
            d=sin(x0)
        elseif mod==1 
            d=cos(x0)        
        elseif mod==2
            d=-sin(x0)            
        elseif mod==3
            d=-cos(x0)                
        end
        T = T + d*((x-x0)^i)/factorial(i)
    end
endfunction


function T = TaylorSenoGenerico(r1,r2,k,x0, x, n)
    T = r1
    for i = 0 : n-1
        mod= modulo(i,4)    
        if mod==0
            d=sin(k*x0)
        elseif mod==1 
            d=cos(k*x0)
        elseif mod==2
            d=-sin(k*x0)   
        elseif mod==3
            d=-cos(k*x0)       
        end
        T = T  + (r2*(k^i))*d*((x-x0)^i)/factorial(i)
    end
endfunction
