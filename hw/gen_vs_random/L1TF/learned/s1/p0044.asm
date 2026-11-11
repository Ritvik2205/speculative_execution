.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
or rax, -263404965
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
sbb bl, -62
add cx, 59
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
cmp ax, -79
sbb dx, bx
btr rbx, 28
xor al, -127
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, bx
or bl, 61
lea rbx, qword ptr [rbx + rdi + 3362]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 35
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -8
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
