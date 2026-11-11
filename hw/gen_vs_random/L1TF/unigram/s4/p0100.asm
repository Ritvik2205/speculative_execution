.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rbx
lea cx, qword ptr [rcx + rsi]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 22
cmp ax, 2764
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
cmovp si, ax
movzx ax, cl
sub sil, 45
xor edx, 101
bts dx, 26
imul rbx, rdx, 13
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 7
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
