.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
sub dil, 87
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
