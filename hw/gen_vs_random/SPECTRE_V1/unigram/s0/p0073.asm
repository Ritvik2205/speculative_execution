.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
cmovs rcx, rcx
add rdx, 95
sub dl, -12
xor dil, -37
add dl, sil
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cwd
imul al
neg bx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
add al, al
cmovbe rdi, rax
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
