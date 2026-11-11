.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
or dl, -8
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor cl, -13
jmp .bb_0.1
.bb_0.1:
or sil, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and dl, -73
and dl, -73
or al, -17
and al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
or al, 74
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
or sil, -78
jmp .bb_0.2
.bb_0.2:
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
