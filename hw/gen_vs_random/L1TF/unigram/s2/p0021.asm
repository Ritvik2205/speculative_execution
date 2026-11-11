.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 86
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
cmovnl cx, bx
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
cmovle edi, ecx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
cmp esi, -52
imul rsi, rsi, 4
xor si, -50
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
test rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
