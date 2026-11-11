.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and ax, -16061
xor sil, 27
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 24
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor bl, sil
xor bl, sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 20
or al, 37
or dl, -21
xor al, dl
and al, 82
or bl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
