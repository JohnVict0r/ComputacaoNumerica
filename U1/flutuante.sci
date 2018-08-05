function f = flutuante(v,b,e,m,M)

    f = 0
    cont=0
    decimal=0
    if b ==2    
        while (v~=0)                       
            if (v>1)&(decimal==0)
                rd=modulo(v,2)
                
                f = f+(rd*(10^cont))
                v=int(v/2)                              
                cont=cont +1     
            else 
                decimal=1                
                if v>0
                    cont=cont-1
                    v=v*2                                        
                    if (int(v)==1)                                                
                        f=f+(1*10^(cont))                        
                        v=v-1
                    end                                           
                end 
                if abs(cont)==e
                    v=0
                end   
            end                                       
        end
    end
    
endfunction
    
