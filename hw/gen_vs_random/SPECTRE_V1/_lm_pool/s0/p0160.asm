.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
lea bx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
lea rdi, qword ptr [rcx + rbx + 19444]
test cl, -62
cmp rax, -72548874
add dil, bl
add eax, 1518653812
sbb cl, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
