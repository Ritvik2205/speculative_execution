.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
xor sil, al
and dl, -73
xor cl, 83
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 88
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 41
xor al, 34
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
or al, dl
and si, -121
and dl, dil
or al, 30
jmp .bb_0.4
.bb_0.4:
and sil, 89
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
