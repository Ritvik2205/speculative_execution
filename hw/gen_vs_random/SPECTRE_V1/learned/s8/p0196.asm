.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub al, bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dil, -106
and cl, bl
cmp rbx, 64
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
cmp dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
