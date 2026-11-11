.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
test sil, 41
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 45
xor sil, al
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
bt di, cx
xor sil, cl
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
and dl, -73
and dl, -73
btr di, 89
and dl, -73
and bl, 68
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
