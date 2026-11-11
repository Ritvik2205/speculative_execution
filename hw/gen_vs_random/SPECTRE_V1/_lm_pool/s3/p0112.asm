.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
mul rcx
and dl, al
test sil, 13
cmp bl, cl
lea bx, qword ptr [rcx]
xchg al, dil
and bl, -43
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
