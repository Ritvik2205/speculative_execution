.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
inc al
add al, 74
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
sbb dx, cx
jmp .bb_0.3
.bb_0.3:
test dl, -37
test al, -56
test cl, 60
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
