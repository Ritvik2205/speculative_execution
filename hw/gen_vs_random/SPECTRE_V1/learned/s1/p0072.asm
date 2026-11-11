.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
sub cl, sil
sub cl, bl
lea bx, qword ptr [rax + rcx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sub dil, cl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and edi, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
