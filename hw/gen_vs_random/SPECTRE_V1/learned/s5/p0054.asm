.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
lea di, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
xor eax, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
