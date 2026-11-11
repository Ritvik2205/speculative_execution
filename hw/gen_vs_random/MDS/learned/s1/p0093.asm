.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 27
test cl, 62
bts rdi, rbx
bts rbx, 25
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and dl, -73
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
jmp .bb_0.1
.bb_0.1:
xor bx, 13
or sil, -78
and dl, dl
bt di, cx
and di, 99
jmp .bb_0.2
.bb_0.2:
or al, 30
sbb al, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
