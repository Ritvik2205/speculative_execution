.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
xor cl, -91
mov dil, al
add cx, -103
lea si, qword ptr [rdi + rbx + 1041]
and dl, -109
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
