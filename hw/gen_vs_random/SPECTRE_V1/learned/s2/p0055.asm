.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edx
mov dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
cmp rax, -72548874
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
test al, 84
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
test sil, 47
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
