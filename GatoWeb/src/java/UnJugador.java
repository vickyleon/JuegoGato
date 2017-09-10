
import java.awt.Button;
import java.awt.Image;
import java.util.Random;
import javax.annotation.ManagedBean;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.swing.ImageIcon;
import javax.swing.JButton;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */



public class UnJugador  {
     public JButton a1,a2,a3,b1,b2,b3,c1,c2,c3;
     private JButton[] ArrButton;
     String turno;
     
    int marcadorJ1,marcadorJ2;
    public Button Salir,Reiniciar;

    int [][] unaMatriz;
    boolean esTurno;
    int contador_tiros;
    
    public  void init(){
        marcadorJ1=0;
        marcadorJ2=0;

        unaMatriz=new int[3][3];
        for(int i=0; i<3;i++){
            for(int j=0; j<3; j++){
                unaMatriz[i][j]=0;
            }
        }
        esTurno=true;
        turno="Turno: Jugador 1";
        contador_tiros=0;

    }
    String getTurno(){
        return turno;
    }
    
    
    public void onCreate(){
       a1.setName("1");
       a2.setName("2");
       a3.setName("3");
        System.out.println(b1.getName());
       
       
       
       ArrButton=new JButton[]{a1,a2,a3,b1,b2,b3,c1,c2,c3};

        for(JButton b: ArrButton){
            if(esTurno){
                b.getActionListeners();
            }

        }
    }
     public void  click(JButton b){
        int a;
        int x;
        ImageIcon img;
        if(esTurno){
             img= new ImageIcon("x.png");
             b.setIcon(img);
         x=1;
        }
        else{
            img= new ImageIcon("o.png");
            
            do {
                a= Aleatorio();

            }while(!ArrButton[a].isEnabled());

            b=ArrButton[a];
            b.setIcon(img);
           x=2; 
        }
        b.setEnabled(false);
        int nombre=Integer.parseInt( b.getName());
        switch (nombre){
            case 1:
                unaMatriz[0][0]=x;
                break;
            case 2:
                unaMatriz[0][1]=x;
                break;
            case 3:
                unaMatriz[0][2]=x;
                break;
            case 4:
                unaMatriz[1][0]=x;
                break;
            case 5:
                unaMatriz[1][1]=x;
                break;
            case 6:
                unaMatriz[1][2]=x;
                break;
            case 7:
                unaMatriz[2][0]=x;
                break;
            case 8:
                unaMatriz[2][1]=x;
                break;
            case 9:
                unaMatriz[2][2]=x;
                break;
        }
        esTurno=!esTurno;
       
        contador_tiros++;
        this.verificarMatriz();

    }
      private void verificarMatriz() {
        int contadorX_F=0, contadorX_C=0,contador0_F=0,
                contador0_C=0,contadorX_DP=0,contador0_DP=0,
                contadorX_DI=0,contador0_DI=0,tamanioGato=3;
        
        boolean hayGanador=false;
        for(int i=0;i<unaMatriz.length;i++){
            for (int j=0;j<unaMatriz.length;j++){
                //Este sirve para encontrar las x en las filas
                if(unaMatriz[i][j]==1){

                    contadorX_F++;
                    if(contadorX_F==3){
                        hayGanador=true;
                    }
                }
                //Este sirve para encontrar las o en las filas
                if(unaMatriz[i][j]==2){

                    contador0_F++;
                    if(contador0_F==3){
                        hayGanador=true;
                    }
                }
                //Este sirve para encontrar las o en la columnas
                if(unaMatriz[j][i]==1){
                    contadorX_C++;
                    if(contadorX_C==3){
                        hayGanador=true;
                    }
                }
                //Este sirve para encontrar las o en la filas
                if(unaMatriz[j][i]==2){
                    contador0_C++;
                    if(contador0_C==3){
                        hayGanador=true;
                    }
                }
                if(i==j){ //Solo si i=0 j=0, i=1 j=1 y i=2 j=2
                    //Este sirve para encontrar las x en las diagonal principal
                    if(unaMatriz[i][j]==1){

                        contadorX_DP++;
                        if(contadorX_DP==3){
                            hayGanador=true;
                        }
                    }
                    //Este sirve para encontrar las o en la diagonal principal
                    if(unaMatriz[i][j]==2){

                        contador0_DP++;
                        if(contador0_DP==3){
                            hayGanador=true;
                        }
                    }
                }
                if((i+j)==tamanioGato-1){
                    //Este sirve para encontrar las x en las diagonal inversa
                    if(unaMatriz[i][j]==1){

                        contadorX_DI++;
                        if(contadorX_DI==3){
                            hayGanador=true;
                        }
                    }
                    //Este sirve para encontrar las o en la diagonal inversa
                    if(unaMatriz[i][j]==2){

                        contador0_DI++;
                        if(contador0_DI==3){
                            hayGanador=true;
                        }
                    }

                }
            }
            contadorX_F=0;contador0_F=0;contadorX_C=0;contador0_C=0;

        }
        String v="";
        if(hayGanador){
            
            if(!esTurno){
                marcadorJ1+=1;
                v="GANA X Jugador 1";

            }
            else {
                marcadorJ2+=1;

                v="GANA 0 \n Jugador CPU";
            }

          
            contador_tiros=0;
            //despues de ganar deshabilitar botones


        }
        if(contador_tiros==9){
            v="Hay un empate";
        }
    }
       public int Aleatorio(){
        int aleatorio;
        Random rnd = new Random();
        aleatorio=(rnd.nextInt(9));
        return aleatorio;
    }

}
