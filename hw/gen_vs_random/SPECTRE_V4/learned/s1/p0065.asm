.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, di
cmp dil, cl
or ax, 27604
xor dl, sil
adc bl, dl
xchg rcx, rdi
test dl, 24
add al, bl
dec al
or al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
