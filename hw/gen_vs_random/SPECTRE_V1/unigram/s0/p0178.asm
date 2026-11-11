.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, -32
sbb esi, 63
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
mul bl
mov dil, dil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
bt ecx, 204
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
or rsi, -119
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 53
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test dl, 113
cmovb edi, ebx
lea eax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
