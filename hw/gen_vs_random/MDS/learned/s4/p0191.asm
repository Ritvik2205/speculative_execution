.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
bts rdx, 200
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
xor dil, 81
xor rax, -843636050
or bl, 43
test dl, al
xor cl, 55
jmp .bb_0.1
.bb_0.1:
or dil, -78
btc ax, 4
or sil, dl
xor al, 8
jmp .bb_0.2
.bb_0.2:
test esi, 1857129931
test rsi, 44
and sil, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test ax, 4430
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
