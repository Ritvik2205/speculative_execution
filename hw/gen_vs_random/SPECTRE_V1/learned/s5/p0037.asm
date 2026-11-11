.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
sub dil, -32
lea edx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
cmovno cx, dx
xchg al, dl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and dl, -109
sub al, dl
adc eax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
