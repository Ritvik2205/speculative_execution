.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rsi]
sub dl, -78
sub al, cl
add cl, 88
cmovb dx, di
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 96
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
lea bx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
