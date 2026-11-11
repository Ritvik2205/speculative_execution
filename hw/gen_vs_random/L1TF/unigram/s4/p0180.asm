.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
imul rsi, rax
cmovnp rsi, rsi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 36
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
test edx, edi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
test dil, -126
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 94
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
cmp ax, -6940
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
seto bl
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
