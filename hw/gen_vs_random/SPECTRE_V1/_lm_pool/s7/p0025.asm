.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
lea ecx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
sub cl, -21
lea dx, qword ptr [rcx + rax]
and bl, 124
add cl, bl
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
