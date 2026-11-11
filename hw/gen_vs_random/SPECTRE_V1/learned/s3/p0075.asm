.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or di, di
test dil, -116
test dx, 67
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 8
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
test al, 40
lea dx, qword ptr [rcx + rdx + 95]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
lea rax, qword ptr [rcx]
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
