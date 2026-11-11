.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -124
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
test al, dil
test rdi, 22
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
xor dil, -124
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and sil, -9
xor cl, -13
test cl, 54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
