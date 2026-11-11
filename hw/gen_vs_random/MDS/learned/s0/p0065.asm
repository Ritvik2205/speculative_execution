.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
btc cx, 115
xor al, dil
test dil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test bx, 25542
or bl, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor sil, cl
or bl, -52
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
not dl
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
