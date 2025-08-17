#include <dc/pvr.h>

void pvr_init() {
    pvr_init_defaults();
    pvr_set_bg_color(0.0f, 0.0f, 0.0f);
}

void pvr_render_frame() {
    pvr_scene_begin();
    pvr_list_begin();
    pvr_scene_finish();
}
