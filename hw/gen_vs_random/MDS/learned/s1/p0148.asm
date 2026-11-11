.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor bl, -102
xor al, sil
not bl
and ax, -10351
or dl, 85
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
not dil
or cl, sil
or sil, -78
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
