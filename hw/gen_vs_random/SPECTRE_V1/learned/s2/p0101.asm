.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
movzx esi, bx
test al, 40
not bx
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
test al, 42
and bl, al
cmp cl, sil
add al, sil
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
