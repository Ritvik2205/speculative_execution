.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovb si, ax
cmp ax, -11439
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -101
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
xor rcx, rsi
add al, -65
sub rax, -1628299544
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
test ax, 19339
mul cx
sub di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
