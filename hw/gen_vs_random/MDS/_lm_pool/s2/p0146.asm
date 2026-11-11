.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
or al, bl
btr cx, ax
test al, sil
or ax, 30524
bt ax, di
or rax, 1461812833
test dil, -80
xor al, dl
and ecx, -104
and al, 106
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
