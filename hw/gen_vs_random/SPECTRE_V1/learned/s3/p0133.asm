.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
lea rsi, qword ptr [rdi + rbx + 99]
or edx, 20
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
lea bx, qword ptr [rcx + rdx + 4]
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx]
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
sbb al, dl
sbb dl, al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
