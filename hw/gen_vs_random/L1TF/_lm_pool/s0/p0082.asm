.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
inc dl
and edi, 28
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
not dl
and bl, dil
or rax, 1808026647
or dil, -113
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 12
add ebx, 2
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
