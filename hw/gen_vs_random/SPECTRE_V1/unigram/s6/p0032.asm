.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
mov rdx, 3609511260715352814
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
sbb al, 104
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
xor dl, sil
setp dil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 72 # instrumentation
cmovns bx, di
btr rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
bts esi, 53
cmovnb si, si
btc edx, 169
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
