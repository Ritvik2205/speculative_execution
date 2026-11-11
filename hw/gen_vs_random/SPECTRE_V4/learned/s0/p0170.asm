.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
add rdi, 111
sub al, 54
add bl, dl
add cl, bl
or cl, -104
xor ax, -22861
and dil, -61
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and di, -65
and dx, -107
add al, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
