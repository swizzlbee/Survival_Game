
/// @desc load_json_file(filename)
/// @param {string} _filename The name of the file to load (e.g., "save_data.json")
/// @returns {struct|array|pointer_null} Returns the parsed data, or pointer_null if it fails.

function load_json_file(_filename) {
    // 1. Check if the file exists before attempting to read it
    if (!file_exists(_filename)) {
        show_debug_message("Error: File " + _filename + " does not exist.");
        return pointer_null;
    }
    
    // 2. Load the file data into a raw memory buffer
    var _buffer = buffer_load(_filename);
    
    // 3. Read the entire buffer contents out as a text string
    var _json_string = buffer_read(_buffer, buffer_string);
    
    // 4. Free the buffer from memory to avoid a memory leak
    buffer_delete(_buffer);
    
    // 5. Parse the string into a GameMaker struct or array
    var _parsed_data = json_parse(_json_string);
    
    return _parsed_data;
}
