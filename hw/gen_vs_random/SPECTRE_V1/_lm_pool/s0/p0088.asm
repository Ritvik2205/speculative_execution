.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
sub bl, -6
lea edx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 57
add dl, 47
lea rsi, qword ptr [rax + rcx + 60]
add al, bl
sbb edx, 105
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
