.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
sbb bl, cl
sub cl, -47
add cl, cl
lea rbx, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
lea eax, qword ptr [rsi]
and bl, al
and rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
