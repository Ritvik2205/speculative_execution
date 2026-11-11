.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
or al, -57
test al, dl
or cl, -78
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi + rdi + 98]
or al, -57
jmp .bb_0.2
.bb_0.2:
test sil, 29
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
