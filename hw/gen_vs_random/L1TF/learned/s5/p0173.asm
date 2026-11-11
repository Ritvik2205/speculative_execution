.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
sub dl, -49
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and al, dl
add dl, -1
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
test dl, -37
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
