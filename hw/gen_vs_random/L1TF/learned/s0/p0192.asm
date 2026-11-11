.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
sbb dil, 16
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and al, -68
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 97
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
xchg rcx, rax
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
