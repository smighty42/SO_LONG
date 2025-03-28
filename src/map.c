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
    window = mlx_new_window(mlx,1280,720,"KEDİ");
    img = mlx_xpm_file_to_image(mlx,KEDI,&w,&h);
    mlx_put_image_to_window(mlx,window,img,4,4);
    mlx_loop(mlx);
}