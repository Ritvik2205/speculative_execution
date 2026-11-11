.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -94 # instrumentation
cmovnle rbx, rdx
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
cmovnbe esi, eax
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
cmovbe ax, bx
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
or al, 100
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
