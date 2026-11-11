.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, 951020724
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
xor al, 45
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovnbe eax, esi
cmp rbx, 4
test dx, ax
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdi
cmp cl, -89
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
add bl, -52 # instrumentation
not esi
btc edx, edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
