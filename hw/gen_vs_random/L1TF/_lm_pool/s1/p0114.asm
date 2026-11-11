.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and di, 60
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub bl, 15
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi], 9
sbb dil, al
or dil, -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
