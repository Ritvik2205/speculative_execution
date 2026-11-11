.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 14
movsx edx, ax
cmp di, 35
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -71
setnle cl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add dil, 16 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 77
lea edx, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -38
xor bl, bl
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and sil, dl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
