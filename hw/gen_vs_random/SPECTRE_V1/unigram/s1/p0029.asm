.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, 62
cmovo bx, di
xchg dil, sil
cmp sil, dl
movsx rax, cx
add dl, cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 56
lea rdx, qword ptr [rcx + rdi + 18]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
cmp cl, al
add bl, 39 # instrumentation
cmovo ebx, ecx
cmovnle dx, bx
or ax, ax
sbb sil, -78
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
