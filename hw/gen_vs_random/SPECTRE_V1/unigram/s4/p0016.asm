.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 73
cmp ebx, edi
cmp rax, 900122030
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
add dl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmp dx, 53
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
neg rdi
bt rsi, 34
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
add dil, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
movsx esi, sil
sbb sil, bl
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add cl, -96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
