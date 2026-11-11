.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
adc ax, -614
lea rax, qword ptr [rbx + rdi + 42]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
cmovbe ax, di
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rsi + rax]
cmp cl, al
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
sub bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
