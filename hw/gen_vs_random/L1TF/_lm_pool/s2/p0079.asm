.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
or eax, 287965578
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and ecx, 83
btc ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
