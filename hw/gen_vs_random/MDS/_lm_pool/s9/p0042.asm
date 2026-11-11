.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
or sil, dl
or sil, dl
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
or cl, 30
or bl, dil
and ax, 339
or sil, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and cl, dil
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
or al, dil
test ebx, -961564216
bts rbx, rdi
and ax, -4410
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
