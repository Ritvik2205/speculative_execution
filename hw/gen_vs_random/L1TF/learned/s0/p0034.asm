.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
or ax, -10161
setb dl
xor al, cl
lea bx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
cmovnz rbx, rsi
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
