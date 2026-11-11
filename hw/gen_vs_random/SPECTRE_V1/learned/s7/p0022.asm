.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, bx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp si, -11
test dil, -116
test al, -126
lea rdx, qword ptr [rcx + rsi + 78]
add bl, -95
test dil, -116
cmovs rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
