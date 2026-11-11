.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 27
sets cl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
cmp cl, 3
setns dl
cmp al, al
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
cmp sil, 96
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
sub sil, -55
xor esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
