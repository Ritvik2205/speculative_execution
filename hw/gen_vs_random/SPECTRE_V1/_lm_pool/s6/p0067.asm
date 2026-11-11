.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ebx, qword ptr [rdx]
test dl, 113
add dl, 47
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
xchg dl, sil
and sil, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
