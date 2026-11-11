.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
cmp rdx, 78
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
btr bx, 104
add cl, al
btr di, ax
xchg sil, cl
not dl
or dl, -67
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
xchg edx, edi
sbb bl, dl
test eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
