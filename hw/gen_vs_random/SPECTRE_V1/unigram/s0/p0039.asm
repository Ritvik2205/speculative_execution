.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 29
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
test dl, 13
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
bt dx, 6
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor rdi, 21
or sil, bl
add dx, 48
sub sil, -55
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
lea rbx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
