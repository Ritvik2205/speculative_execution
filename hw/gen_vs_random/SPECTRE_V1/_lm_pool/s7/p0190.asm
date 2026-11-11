.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
lea ecx, qword ptr [rdi + rdi + 22]
sub al, 63
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 93
sub cl, -47
lea ax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
