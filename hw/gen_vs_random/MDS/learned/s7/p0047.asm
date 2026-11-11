.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 45
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and sil, 89
xor bl, -102
test dil, sil
and cl, -71
or cx, 39
test eax, 424329527
jmp .bb_0.1
.bb_0.1:
test eax, -1634766116
not al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
xor ax, -23364
xor al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
