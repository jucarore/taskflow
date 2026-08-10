--migracion 0002:agrega fecha limite a las tareas
ALTER TABLE tasks ADD COLUMN fecha_limite TEXT;
