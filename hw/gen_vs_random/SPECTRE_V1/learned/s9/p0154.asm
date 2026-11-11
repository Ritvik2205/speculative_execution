.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
test sil, 97
add sil, -68
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
mov cl, dl
add dil, 72
or dx, 42
btc bx, di
add dil, al
inc al
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
