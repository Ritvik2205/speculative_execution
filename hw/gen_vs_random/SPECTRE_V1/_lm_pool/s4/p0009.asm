.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
adc sil, -77
cmovno di, bx
sub cl, bl
sub cl, -21
mov dl, al
jmp .bb_0.1
.bb_0.1:
or bl, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
sbb dl, cl
or bl, dl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
