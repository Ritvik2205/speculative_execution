.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 9
cmp esi, 36
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
add bl, 70
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 97
sub dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
