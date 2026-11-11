.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
test ebx, -2015966884
and cx, -8
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dil, cl
xor dl, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and al, -55
test sil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
