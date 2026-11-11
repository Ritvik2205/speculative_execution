.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
test sil, 29
or eax, -62
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and bl, 89
or dl, -67
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
imul rdx, rdi, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
