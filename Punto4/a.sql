--Desabilitar cache
--0 = Desabilitado, 1 = habilitad0, 2 Por demanda.
--Global aplica para todos los usuarios.

SET GLOBAL query_cache_type = 0;
SET GLOBAL query_cache_size = 0;

--Habilitar cache
SET GLOBAL query_cache_type = 1;
SET GLOBAL query_cache_size = 41943040;

SHOW VARIABLES LIKE 'have_query_cache';
  SHOW VARIABLES LIKE 'query_cache_size';

--Según la doc: When using a standard MySQL binary, this value is always YES, even if query caching is disabled. 
