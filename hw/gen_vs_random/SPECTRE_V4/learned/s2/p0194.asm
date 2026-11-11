.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
cmp dil, -29
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
dec al
sbb al, 102
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
sub al, 0
or al, -90
sub rax, 714283065
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
