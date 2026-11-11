.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
xchg bl, cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
setb bl
and rax, -175411684
and dil, al
not ecx
jb .bb_0.2
jmp .exit_0
.bb_0.2:
test dl, -7
cmp esi, 1
sbb bl, al
sub cl, sil
and al, -54
adc sil, -77
lea ecx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
