.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
sbb sil, -78
cmp edx, 44
or ecx, 55
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
setnle cl
sbb cl, 105
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
jmp .bb_0.2
.bb_0.2:
cmp ax, 7452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
