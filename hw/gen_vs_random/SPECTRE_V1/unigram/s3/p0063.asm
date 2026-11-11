.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, 218
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 34
lea edx, qword ptr [rax]
bt ecx, edx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp si, si
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
cmp dl, 119
add cl, sil
sub dil, dil
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
