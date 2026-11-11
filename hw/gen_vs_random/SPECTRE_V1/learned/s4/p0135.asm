.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
or al, 19
sbb dl, cl
sub dil, cl
xchg edi, ecx
and cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub cl, -21
sub dl, cl
sbb al, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
