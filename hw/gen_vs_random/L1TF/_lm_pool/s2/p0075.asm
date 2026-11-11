.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
lea rcx, qword ptr [rax + rdi + 89]
or bl, al
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, dil
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test sil, 29
add cl, sil
cmp al, 27
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
add dl, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
