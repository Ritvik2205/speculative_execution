.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, si
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
sub al, dil
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
add bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
