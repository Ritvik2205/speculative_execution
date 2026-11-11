.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
test dx, bx
not rsi
lea ax, qword ptr [rax + rbx]
add dil, 100 # instrumentation
lea cx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
xchg bl, sil
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dil, -7
cmovnl rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 96
btc bx, ax
or rdx, 11
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
