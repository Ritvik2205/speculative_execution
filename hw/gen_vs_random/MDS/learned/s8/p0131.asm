.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
test edi, -1252846009
jmp .bb_0.1
.bb_0.1:
or bl, cl
xor al, -4
btr cx, si
or dl, dil
test dl, bl
and sil, sil
bts cx, 14
or rbx, -72
test al, sil
or sil, -78
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor bl, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
