.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
add cl, 89 # instrumentation
adc dil, dl
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
add al, -37 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
or di, 61
add dil, 12 # instrumentation
lea rax, qword ptr [rsi + rdi]
lea ax, qword ptr [rsi + rax + 56494]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
not ebx
add bx, 2
neg rcx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
