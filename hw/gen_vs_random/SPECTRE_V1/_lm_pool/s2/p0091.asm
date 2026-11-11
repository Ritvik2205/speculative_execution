.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
xchg dl, dil
sub al, -89
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
test bl, -8
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 64
lea rdi, qword ptr [rsi + rdi]
cmovs ax, si
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
