.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, -84
and bl, bl
not bl
or dil, -113
lea si, qword ptr [rcx + rax + 49]
add sil, -61
jmp .bb_0.2
.bb_0.2:
or al, dil
cmovs bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
