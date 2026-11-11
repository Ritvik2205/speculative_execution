.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
sub dil, -32
sub cl, dil
sub dl, -12
add al, 18
test dl, -7
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, dil
lea ax, qword ptr [rsi + rdi + 81]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
