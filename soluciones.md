
-- Inserto una tarea a un usuario
INSERT INTO public.tarea (titulo, usuario_id, prioridad_id)
	VALUES ('prender el calefoon', 3, 2)


-- Obtengo todas las tareas	
SELEC * FROM public.tarea;


-- Obtengo todaslas tareas con por usuario, prioridad y estado. Ordenadas segun el usuario.
SELECT us.email as "usuario", ta.titulo as "tarea", pr.nombre, ta.completado as "estado"
FROM public.tarea as ta
JOIN public.usuario us
ON ta.usuario_id = us.id
RIGHT JOIN public.prioridad pr 
ON ta.prioridad_id = pr.id
ORDER BY us.email


-- Obtengo solo las tareas 'pendientes' de un usuario especifico	
SELECT us.email as "usuario", ta.titulo as "tarea", pr.nombre, ta.completado as "estado"
FROM public.tarea as ta
JOIN public.usuario us
ON ta.usuario_id = us.id
RIGHT JOIN public.prioridad pr 
ON ta.prioridad_id = pr.id
WHERE ta.completado = false 
AND us.email LIKE 'gonsan%'


-- Elimino una tarea segun el id
DELETE FROM public.tarea
WHERE id = 8