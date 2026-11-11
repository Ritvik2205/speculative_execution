.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
and cl, al
and dx, 60
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and dl, -73
and si, -121
test bl, -14
and al, dl
or al, -22
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and bl, bl
xor cl, 83
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
