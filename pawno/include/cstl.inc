#if defined _cstl_inc
    #endinput
#endif
#define _cstl_inc
#pragma library cstl

#define VEC_ENTRY_TYPE_CELL 1
#define VEC_ENTRY_TYPE_ARRAY 2
#define VEC_ENTRY_TYPE_FLOAT 3

// VECTOR

native vector_push_back(vecid, element); // push element
native vector_push_back_float(vecid, Float:element); // push element
native vector_push_back_arr(vecid, const element[]); // push array

native vector_size(vecid); // get vector size

native vector_get(vecid, id); // get element
native Float:vector_get_float(vecid, id); // get floating point number
native vector_get_arr(vecid, id, buffer[], buflen = sizeof(buffer)); // get array element to buffer

native vector_set(vecid, id, element); // set cell
native vector_set_float(vecid, id, Float:element); // set cell
native vector_set_arr(vecid, id, const element[]); // set array

native vector_clear(vecid); // clear vector
native vector_resize(vecid, newsize); // attention!: reducing size causes memory leaks if array pointers are removed

native vector_entry_type(vecid, id); // get element type
native vector_remove(vecid, id); // remove element by ID

native vector_find(vecid, element);  // find ID of int element
native vector_find_float(vecid, Float:element); // find ID of float element
native vector_find_arr(vecid, const element[]); // find ID of array

native vector_globalize(vecid); // makes vector visible to all scripts
native vector_deglobalize(vecid); // deglobalizes vector (vector removed from all scripts except calling script)
native vector_is_globalized(vecid); // is vector ID globalized

native vector_index_exists(vecid, index); // does index exist

// MAP

native map_insert(mapid, const key[], value);
native map_insert_float(mapid, const key[], Float:value);
native map_insert_arr(mapid, const key[], const value[]);

native map_get(mapid, const key[]);
native Float:map_get_float(mapid, const key[]);
native map_get_arr(mapid, const key[], buffer[], buflen = sizeof(buffer));

native map_size(mapid);
native map_remove(mapid, const key[]);
native map_contains(mapid, const key[]);
native map_entry_type(mapid, const key[]);

native map_clear(mapid);

native map_globalize(mapid); // makes map visible to all scripts
native map_deglobalize(mapid); // deglobalizes map (map removed from all scripts except calling script)
native map_is_globalized(mapid); // is map ID globalized