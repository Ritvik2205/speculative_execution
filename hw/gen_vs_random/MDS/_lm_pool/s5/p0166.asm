.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
bts rdx, rax
or al, -22
xor al, 55
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
jmp .bb_0.1
.bb_0.1:
or al, sil
and dl, bl
or al, cl
test dil, sil
xor rax, -270810088
test cl, -123
xor ax, -12492
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
