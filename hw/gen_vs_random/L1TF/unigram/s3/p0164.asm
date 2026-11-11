.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
sub rdi, 80
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
sbb edx, 23
cmp bl, 123
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
cmovbe ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 26
lea cx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
cmp cl, bl
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
setnbe dil
add al, -1 # instrumentation
nop
cmovnbe bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
