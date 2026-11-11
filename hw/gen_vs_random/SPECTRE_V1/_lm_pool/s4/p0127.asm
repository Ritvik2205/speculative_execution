.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
lea rdx, qword ptr [rdi + rcx + 59295]
sub dl, 96
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
or eax, -1161451853
test cl, -33
and al, bl
test cl, -120
adc dil, 72
adc eax, 1725322202
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
