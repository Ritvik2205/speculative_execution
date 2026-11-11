.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
test bl, -8
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dil, -114
xchg sil, dil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
inc eax
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and bl, 87
btc ax, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
