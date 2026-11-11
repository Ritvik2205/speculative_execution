.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor rsi, 6
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
bswap rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
