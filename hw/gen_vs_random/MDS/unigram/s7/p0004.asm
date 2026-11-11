.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
xor cl, dil
cmovz edx, ebx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and bl, sil
bt rdi, 36
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or ebx, edx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 80
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
and si, -121
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
