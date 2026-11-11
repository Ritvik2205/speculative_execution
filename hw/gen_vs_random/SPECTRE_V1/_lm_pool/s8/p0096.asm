.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
test dil, -116
test dil, -116
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
xor rbx, rax
xor sil, -33
or al, 100
lea cx, qword ptr [rbx + rax + 92]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
