#include "../mlx/mlx.h"
#define kedi "../textures/player.xpm"

int main()
{
    void *mlx;
    void *window;
    void *img;
    int w;
    int h;
    mlx = mlx_init();
    window = mlx_new_window(mlx,50,50,"KEDİ");
    img = mlx_xpm_file_to_image(mlx,kedi,&w,&h);
    mlx_put_image_to_window(mlx,window,img,4,4); 
}