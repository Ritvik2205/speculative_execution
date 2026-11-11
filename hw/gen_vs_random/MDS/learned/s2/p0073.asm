.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
btc cx, 115
xor bl, 67
xor bl, al
test edi, -1252846009
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
xor al, cl
bt ax, si
jmp .bb_0.3
.bb_0.3:
xor al, 9
xor al, 55
or dl, dl
and esi, 67
sbb cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
