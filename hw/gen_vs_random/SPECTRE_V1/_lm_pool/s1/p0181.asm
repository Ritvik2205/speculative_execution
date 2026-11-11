.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
add dl, 47
xchg rdi, rdx
sub rdi, 93
mov sil, al
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
add bl, cl
lea rsi, qword ptr [rax]
cmp dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
cmp di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
