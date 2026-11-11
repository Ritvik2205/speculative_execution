.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -12519
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or al, -61
xor cl, -13
and ax, 31082
or bl, dil
and cx, -2
or dil, -78
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
