.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and dil, 98
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
not eax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
mul si
bts di, bx
sub cl, al
add dl, bl
sets dl
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
setnp cl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -89
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
