package com.rubeny.cice.prueba01;

import android.util.Log;
import android.view.View;

/**
 * Created by cice on 13/5/16.
 */
public class EscuchaEventos implements View.OnClickListener {


    @Override
    public void onClick(View v) { //Aqui se recibe el boton;
        Log.d(getClass().getCanonicalName(), "ha apretado el boton");
            //TODO tendria que acceder a la caja de texto, calcular la longitud y mostrarlo
    }
}
