.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 12
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
setnbe dil
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
xor al, 38
mov dil, 9
or al, dl
add dl, -10 # instrumentation
cmovns ebx, eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
imul rdx, rsi, 87
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and dil, dil
test rsi, 493258429
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
