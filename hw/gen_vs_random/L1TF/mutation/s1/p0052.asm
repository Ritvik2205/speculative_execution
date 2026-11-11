.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rsi]
test edx, -541774418
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
or edi, edx
bt rcx, 38
xchg dl, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
xor rax, -2072052278
lea bx, qword ptr [rdi]
or sil, -44
add dl, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
inc al
sbb ax, -9869
add bl, al
add cl, -36
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
bt edi, ecx
add al, -1 # instrumentation
nop
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cx, 127
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
