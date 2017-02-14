varying vec4 position;  
uniform float time;  

void main() {  

	position = gl_Vertex;  

    vec4 pos = gl_ProjectionMatrix * gl_ModelViewMatrix * gl_Vertex;  

    float scalar = 1.5;  
    float scalar2 = 90.0;  


    float val = noise1(vec4(position.x*scalar, position.y*scalar, position.z*scalar, time*4.0))+scalar;  
//    x & y noise distortion => works  
//    pos += vec4(val*scalar2, val*scalar2, 0, 1);   

      pos += vec4(0.0, 0.0, val*scalar2, 1.0);   

	gl_Position = pos;  

    // グラデーションカラーを作る
    gl_FrontColor.rgb = 0.5 * gl_Normal.xyz + 0.5;  
gl_FrontColor.a = 1.0;   
}  