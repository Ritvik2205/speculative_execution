.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 74
cmovnb esi, eax
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
add bl, bl
cmovs dx, cx
movzx dx, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
add bl, -72
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 86
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 13
movzx cx, bl
add cl, -42 # instrumentation
adc sil, cl
inc esi
sbb rax, 183833426
or dl, dl
movzx dx, dl
test rax, -344032571
test dil, 11
cmovp esi, eax
xor edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
