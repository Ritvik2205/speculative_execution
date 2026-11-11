.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and cl, al
or sil, bl
not bl
bts bx, 3
and sil, -56
test bl, bl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and ebx, 30
xor cl, 98
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
