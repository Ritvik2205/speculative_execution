.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, -6940
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmovb si, ax
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
sub rax, -2089384489
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
xor rcx, rsi
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
test ax, 22956
sub di, ax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
