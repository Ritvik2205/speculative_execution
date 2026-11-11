.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
test dl, 9
or dl, -97
test dl, al
test sil, bl
test sil, dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
btr di, cx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
xor sil, -46
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
