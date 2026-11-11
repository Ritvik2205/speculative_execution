.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 1
sbb eax, 2098460225
adc dl, -49
add bl, cl
sbb cl, dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and bl, al
cmp cl, bl
movsx ax, dl
cmp dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
