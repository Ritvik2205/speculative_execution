.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
add edx, 56
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 33
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
add al, 104 # instrumentation
sbb rax, 1890168613
sub rax, -1628299544
xor cx, 113
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
adc dl, al
add dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
