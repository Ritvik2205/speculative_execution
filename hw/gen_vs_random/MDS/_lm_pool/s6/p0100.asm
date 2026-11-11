.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor sil, -126
and rcx, 107
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
or al, -78
bts rcx, rdi
test dil, 46
or al, -22
jmp .bb_0.1
.bb_0.1:
xor dl, dil
or al, -75
or dl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
test al, cl
xor di, -83
xor dl, cl
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
