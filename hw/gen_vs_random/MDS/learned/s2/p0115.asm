.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and dl, -73
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
xor rdi, -9
test sil, 17
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor si, 91
test ebx, -2015966884
and ax, -16061
test rax, -363019044
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or rax, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
