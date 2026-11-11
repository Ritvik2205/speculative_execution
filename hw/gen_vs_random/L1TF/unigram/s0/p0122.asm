.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dx, 34
add bl, 119 # instrumentation
cmovle dx, cx
and al, al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
sbb sil, bl
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
add eax, -1
and rsi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
btc edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 33
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
