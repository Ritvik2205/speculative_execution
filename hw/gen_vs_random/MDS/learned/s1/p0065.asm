.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
xor eax, -885380838
and ax, -12519
or rdx, -109
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or dl, -31
xor dil, -3
sub di, 71
xor al, -89
xor al, -19
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
