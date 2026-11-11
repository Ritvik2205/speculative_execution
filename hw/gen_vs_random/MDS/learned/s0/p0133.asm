.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
xor cl, 24
jmp .bb_0.1
.bb_0.1:
or dil, bl
not al
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
or dil, dil
xor al, -4
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
test al, 66
or bl, 13
xor di, -83
test sil, 41
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
