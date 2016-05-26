package com.rubeny.cice.prueba01;

import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        //TODO recoger los datos

         Button boton = (Button)findViewById(R.id.button); //Res una funcion que me deja entrar


        EscuchaEventos escuchaEventos = new escuchaEventos();

        boton.setOnClickListener(escuchaEventos);






        //TODO Calcular






        //TODO Mostrar los datos








    }
}
