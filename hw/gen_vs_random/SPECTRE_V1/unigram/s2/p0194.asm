.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, al
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
btr bx, 193
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
mul al
cmp rdi, rdx
sub al, 63
add bl, -58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
bts dx, 26
bts ax, 38
lea di, qword ptr [rdi + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
sbb al, 66
cmovnbe rsi, rdi
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
