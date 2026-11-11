.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 94
test cl, 93
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
cmp dx, 40
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 43
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 73
btc rdx, 2
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
cmovle si, si
lea ebx, qword ptr [rax + rcx + 84]
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
