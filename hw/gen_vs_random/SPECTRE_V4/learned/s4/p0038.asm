.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, -91
and al, -118
and cx, -117
dec sil
mov bl, dl
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
cmovnp ax, bx
mov bl, dil
and ax, 27239
imul rbx, rdx, 93
cmp al, sil
cmp al, -122
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
cmp al, 75
adc al, sil
xor dl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
