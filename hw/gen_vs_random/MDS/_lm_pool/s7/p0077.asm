.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test rdi, 1
or dil, 16
test bl, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor bl, -61
xor cl, 15
or dil, -41
or al, cl
and dl, -73
test si, 33
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or dl, dil
test bl, -14
xor rdi, -9
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
