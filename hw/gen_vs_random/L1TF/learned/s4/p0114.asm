.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -95 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
inc ecx
test cl, 55
adc bl, -14
sub dx, 34
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
