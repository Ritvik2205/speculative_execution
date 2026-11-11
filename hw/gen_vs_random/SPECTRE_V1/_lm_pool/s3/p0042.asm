.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
or eax, 848176907
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, 96
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
jb .bb_0.4
jmp .exit_0
.bb_0.4:
sbb dil, dil
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
