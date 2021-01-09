package ConsutalEntidades;
import ConsutalEntidades.IniciarSesion;

public aspect VerificarSesion {	
	
	IniciarSesion ui = new IniciarSesion();

    pointcut nombrePointcut(): call(* *.consultar(*)); 

    before() : nombrePointcut() {
        if(ui.sesionIniciada) 
        	ui.control = true;
        else
        	ui.control = false;
        
    } 
    after() : nombrePointcut()  {
        System.out.println("Despues del chequeo de la sesion");
    }  
}