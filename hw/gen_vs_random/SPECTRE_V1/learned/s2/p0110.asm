.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 12 # instrumentation
cmovnb edx, eax
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
sub al, -82
add al, -109
sub al, cl
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
mov bl, al
lea dx, qword ptr [rcx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
