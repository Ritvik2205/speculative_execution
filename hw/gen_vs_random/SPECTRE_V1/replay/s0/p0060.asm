.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp ax, 7046
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -101
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 10
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor rcx, rsi
test ax, 636
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
