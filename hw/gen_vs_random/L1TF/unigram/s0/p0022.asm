.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
movzx edx, si
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 1
btc rbx, rdi
adc rdi, 94
cmovp ebx, edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
cmp esi, 31
add al, 64 # instrumentation
cmovnl rsi, rdi
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
xchg bx, si
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 49
cmovz ecx, eax
mov rax, -6437636498926413678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
