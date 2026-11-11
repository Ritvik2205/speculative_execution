.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub bx, 39
add dil, 88
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and bl, dil
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
