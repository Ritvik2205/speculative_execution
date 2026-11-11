.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -29
and cl, dl
add dl, al
cmp rax, -1247892360
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
movsx cx, dil
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
sub al, 69
sbb eax, -747044528
sub bl, cl
adc dil, -17
mov dl, dil
neg cl
xor al, dil
adc cl, -86
sbb dl, -106
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
