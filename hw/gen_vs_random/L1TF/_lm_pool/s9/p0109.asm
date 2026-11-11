.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
not dl
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
lea ebx, qword ptr [rdi + rdi + 86]
adc al, -61
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
cmovnz rbx, rdx
lea eax, qword ptr [rax + rcx + 46]
sub bl, -96
lea rbx, qword ptr [rcx]
sub dl, -34
mov edi, 2036069402
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
