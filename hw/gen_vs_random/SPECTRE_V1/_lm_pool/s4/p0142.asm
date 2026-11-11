.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
inc dl
sub dil, -32
test al, 34
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov bl, dil
sub bl, cl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
or ax, 18658
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
