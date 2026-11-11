.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 45
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
test di, si
and al, -68
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 56
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
