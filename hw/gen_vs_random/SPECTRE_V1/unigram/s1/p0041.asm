.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, 40
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
sbb dl, 127
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
nop
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
adc edx, 85
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
