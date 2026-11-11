.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 24
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
or dil, -113
xor bl, -5
sub dl, -78
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and bl, 89
and dl, 73
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
