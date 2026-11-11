.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 94
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
not sil
test sil, 17
not al
and edi, 23
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and sil, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test dl, sil
and edx, -44
bts di, cx
test cx, 401
and sil, 74
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
test eax, 343548072
or bl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
