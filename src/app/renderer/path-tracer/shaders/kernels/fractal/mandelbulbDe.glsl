float mandelbulbDe(vec3 pos) {
  int Iterations = 10;

  vec3 z = pos;
  float dr = 1.0;
  float r = 0.0;

  for (int i = 0; i < Iterations; i++) {
    r = length(z);
    if (r > 3.0)
      break;

    // Convert to polar coordinates
    float theta = acos(z.z/r);
    float phi = atan(z.y, z.x);
    dr = pow(r, Power - 1.0) * Power * dr + 1.0;

    // Scale and rotate the point
    float zr = pow(r, Power);
    theta = theta * Power;
    phi = phi * Power;

    z = zr * vec3(sin(theta) * cos(phi), sin(theta) * sin(phi), cos(theta));
    z += pos;
  }

  float mandelBulbDistance = 0.5 * log(r) * r / dr;
  return mandelBulbDistance;
}

#pragma glslify: export(mandelbulbDe)