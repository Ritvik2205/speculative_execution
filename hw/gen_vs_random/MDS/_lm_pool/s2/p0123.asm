.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 62
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
or al, 16
test sil, bl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
test sil, -55
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
xor cl, dil
xor dil, sil
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
