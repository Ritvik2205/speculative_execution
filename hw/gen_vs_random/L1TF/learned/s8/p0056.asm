.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
add dil, -7
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
test dil, -126
jns .bb_0.1
jmp .exit_0
.bb_0.1:
btc si, bx
lea di, qword ptr [rdi + rcx]
or al, -57
sub al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
