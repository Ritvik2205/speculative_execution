.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
cmp bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and dil, -114
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, bl
sets dl
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
bts di, bx
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
mul si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
setnp cl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 90
sub cl, al
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
