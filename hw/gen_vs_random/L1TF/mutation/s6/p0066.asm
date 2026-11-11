.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmp ax, 24210
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
sub rax, 1806572419
test ax, 13879
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
sub di, ax
xor rcx, rsi
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
