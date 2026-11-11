.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
cmp esi, 82
lea ax, qword ptr [rdx]
inc edi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov al, dil
sub rsi, 97
and cl, -57
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
