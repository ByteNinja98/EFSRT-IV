package com.smartoryx.interfaces;

import com.smartoryx.model.Usuario;

public interface UsuarioInterface {
	
	// buscar un usuario según sus datos
		public Usuario validarAcceso(Usuario u);
		
		public int registrarUsuario(Usuario u);
	}

