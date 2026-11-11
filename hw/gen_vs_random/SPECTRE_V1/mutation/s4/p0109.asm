.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
add eax, -55403434
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
js .bb_0.1
jmp .exit_0
.bb_0.1:
test rdi, -1846965753
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
test al, 48
add al, -94 # instrumentation
cmovnle rcx, rsi
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
or sil, 34
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
