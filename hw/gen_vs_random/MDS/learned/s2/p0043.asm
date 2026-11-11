.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -114
and cl, bl
cmovnb rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
or bl, al
or rax, -141551502
or dl, dil
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
and rbx, 65
and dx, 3
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and dl, -73
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
