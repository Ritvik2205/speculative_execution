.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
xor eax, -603819833
sub cl, 86
add dl, al
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
adc dl, sil
test rax, rsi
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
